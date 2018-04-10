/*
 * MAV120
 * Project 4
 * A basic shell
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <errno.h>
#include <unistd.h>
#include <sys/times.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <time.h>

/* Delimters used by the tokenizing function */
#define DELIMITERS " \t()<>|&;"

/* These command strings can change the color of the terminal */
#define CHANGE_PRINT_COLOR_TO_GREEN  "\x1B[32m"
#define RESET_PRINT_COLOR_TO_WHITE  "\x1B[37m"

void choose_command(char *);

/* the function used to read input from user */
void read_line(char buffer[], int length) {
	printf("> ");
	fgets(buffer, length, stdin);
	fflush(stdout);
	int strLen = strlen(buffer);
	/* Remove the \n character from the buffer */
	if(strLen > 0)
		buffer[strLen - 1] = 0;
}

/* struct used to hold information about file redirection */
typedef struct command_flags {
	int writeToFileFlag;
	int appendToFileFlag;
} command_flags;

/* changes directory */
int change_directory(char *dirPath, command_flags *flags) {
	int res = -1;
	dirPath = strtok(NULL, DELIMITERS);
	if(dirPath == NULL) {
		printf("You must enter a directory\n");
		return -1;
	} else {
		res = chdir(dirPath);
		if(res == -1) {
			printf("%s: No such directory \n", dirPath);
		}

	}
	return res;
}

/* exits shell */
int exit_shell(char *command_token, command_flags *flags) {
	/* Change terminal color back to white */
	printf(RESET_PRINT_COLOR_TO_WHITE"\n");
	exit(0);
	return 1;
}

/* times the command following it using times syscall */
int time_command(char *command_token, command_flags *flags) {
	double CLOCK_TICK = (double)(sysconf(_SC_CLK_TCK));

	char *command = strtok(NULL, "");
	struct tms start_times;
	struct tms end_times;
	clock_t start_time = times(&start_times);
	choose_command(command);
	clock_t end_time = times(&end_times);

	double u_time = (double)end_times.tms_utime - (double)start_times.tms_utime;
	double cu_time = (double)end_times.tms_cutime - (double)start_times.tms_cutime;
	double s_time = (double)end_times.tms_stime - (double)start_times.tms_stime;
	double cs_time = (double)end_times.tms_stime - (double)start_times.tms_stime;

	printf("\nuser: \t%fs\n", (double)(u_time + cu_time)/CLOCK_TICK);
	printf("sys:  \t%fs\n", (double)(s_time + cs_time)/CLOCK_TICK);

	return 0;

}

/* This function takes in a token returned by strtok(), and
 * returns an array of strings. Also takes argument integer pointer
 * which will set to number of total arguments found.
 *
 * For example:
 * char *command_ptr = strtok("ls -la", DELIMITERS);
 *
 * split_string_into_args(command_ptr);
 * returns: ["ls", "-la", "NULL"]
 *
 */
char **split_string_into_args(char *command_ptr, int *num_of_args) {
	int MAX_ARG_NO = 5;
	/* Allocate MAX_ARG_NO space for this array. Since it is dynamic,
	 * we will allocate more space if there are more than this many
	 * arguments. */
	char **results = malloc(sizeof(char *) * MAX_ARG_NO);
	/* set first entry to the the first command */
	results[0] = command_ptr;
	int arg_no = 0;
	int i;

	/* Keep tokenizing input until current token is NULL */
	while(command_ptr != NULL) {
		/* Allocate more space for the array because we are
		 * beyond MAX_ARG_NO. Basically doing chunking, since we
		 * do not know how many arguments  */
		if((arg_no)>=2 && (arg_no+1) % MAX_ARG_NO == 0) {
			/* This creates a new pointer with MAX_ARG_NO more spots
			 * and copies what was in the old one into the new one,
			 * and then sets the value of the variable to new pointer */
			int reallocation_number = (arg_no+1) / MAX_ARG_NO;
			int new_results_size = sizeof(char *) * MAX_ARG_NO * (reallocation_number+1);
			char **more_results_mem = malloc(new_results_size);
			for(i=0; i<=arg_no; i++) {
				more_results_mem[i] = results[i];
			}
			free(results);
			results = more_results_mem;
		}

		/* Tokenize the next part of the string, and set value
		 * in results array to that new piece. */
		/* Doing the loop it in this order sets the last value
		 * to NULL, which is what execvp requires */
		command_ptr = strtok(NULL, DELIMITERS);
		results[++arg_no] = command_ptr;
	}

	*num_of_args = arg_no;
	return results;
}

/* determines what kind of file redirection is occuring */
void check_file_redirect_options(char *line, command_flags *flags) {
	if(strstr(line, ">>") != NULL) flags->appendToFileFlag = 1;
	else if(strstr(line, ">") != NULL) flags->writeToFileFlag = 1;
}

/* redirects output to file */
void redirect_to_file(char **args, int num_of_args, command_flags *flags) {
	FILE* file_ptr = NULL;
	char *file_name = args[num_of_args-1];
	if(flags->writeToFileFlag) {
		file_ptr = freopen(file_name, "w", stdout);
	}
	if(flags->appendToFileFlag) {
		file_ptr = freopen(file_name, "a", stdout);
	}
	if(file_ptr == NULL) {
		printf("File was not able to be opened\n");
	}
	args[num_of_args-1] = NULL;
}

/* forks process and calls execvp */
int call_unix_command(char *command_ptr, command_flags *flags) {
	/* get the arguments, in a array supported by execvp */
	int num_of_args;
	char **args = split_string_into_args(command_ptr, &num_of_args);

	/* create a sacrifical child process to run the unix command */
	int child_process_pid = fork();
	if(child_process_pid == 0) {
		if(flags->writeToFileFlag || flags->appendToFileFlag)
			redirect_to_file(args, num_of_args, flags);

		execvp(args[0], args);
		/* If the child process did not exit, inform user and then
		 * exit child process */
		printf("%s: command not found\n", args[0]);
		exit(errno);
	} else {
		/* wait until children done and exit */
		int status;
		wait(&status);
	}
	return 0;
}

void choose_command(char *line) {
	/* check if any file redirection neccesary, before we
	 * change the command line string with strtok */
	command_flags flags = {0, 0};
	check_file_redirect_options(line, &flags);


	char *command = strtok(line, DELIMITERS);
	if(command == NULL) return;

	/* Use array and function pointers instead of multiple
	 * annoying if else statements */
	char internal_commands[3][5] = {
		"exit",
		"cd",
		"time"
	};

	int (*internal_command_functions[3])(char *, command_flags *) = {
		&exit_shell,
		&change_directory,
		&time_command
	};

	/* loop through commands and call command if that is it */
	int num_of_internal_commands = sizeof(internal_commands)/sizeof(internal_commands[0]);
	int command_no;
	for(command_no=0; command_no<num_of_internal_commands; command_no++) {
		if(!strcmp(command, internal_commands[command_no])) {
			internal_command_functions[command_no](command, &flags);
			break;
		}
	}

	/* if command was not internal command it is a unix command */
	if(command_no == num_of_internal_commands) {
		call_unix_command(command, &flags);
	}
}

int main() {
	char buffer[1000];

	/* infinite loop of reading a line and choosing an input */
	for(;;) {
		read_line(buffer, 1000);
		/* Just skip if no input */
		if(buffer[0] == 0) continue;
		choose_command(buffer);
	}

	exit(1);

	return 1;
}
