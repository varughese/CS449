/*
 *
 * Rock Paper Scissors
 * Mathew Varughese
 *
 * This is a simple program which asks a player to play against the computer in Rock Paper Scissors
 * The user must type some variant of the word "yes" to start the game, and correctly spell
 * their choice of "rock", "paper", or "scissors" for correct behavior.
 *
 * The game is a best out of 5, and the player is prompted to start a new game at the end of each one.
 *
 */

#include <stdio.h>
#include <strings.h>

/*
 * This reads a user input and determines whether they said "yes" or not
 */
int wantsToPlay() {
	char userOption[4];
	scanf("%s", userOption);

	return tolower(userOption[0]) == 'y';
}

/*
 * This reads a user input into the char array passed in
 */
void getUserChoice(char* choice) {
	printf("What is your choice? ");
	scanf("%s", choice);
}

/*
 * This randomly chooses a choice for the computer
 */
void getComputerChoice(char* choice) {
	char choices[3][10] = {"rock", "paper", "scissors"};
	int c = rand() % 3;
	printf("The computer chooses %s. ", choices[c]);

	/* Here, I copy the array element into choice variable manually, instead of using
	 * strcpy to avoid the "incompatible implicit declaration of built-in function ‘strcpy’"
	 * warning from the compiler
	 */
	int i = 0;
	while(choices[c][i] != '\0') {
		choice[i] = choices[c][i];
		i++;
	}
	choice[i] = '\0';
}

/*
 * This takes two choices and determines the winner as an integer.
 *
 * 0: Tie
 * 1: Player
 * 2: Computer
 *
 */
int computeWinner(char *userChoice, char *computerChoice) {
	if(!strcmp(userChoice, "rock")) {
		if(!strcmp(computerChoice, "rock")) {
			return 0;
		} else if(!strcmp(computerChoice, "paper")) {
			return 2;
		} else {
			return 1;
		}
	} else if(!strcmp(userChoice, "paper")) {
		if(!strcmp(computerChoice, "rock")) {
			return 1;
		} else if(!strcmp(computerChoice, "paper")) {
			return 0;
		} else {
			return 2;
		}
	} else {
		// userChoice == "scissors"
		if(!strcmp(computerChoice, "rock")) {
			return 2;
		} else if(!strcmp(computerChoice, "paper")) {
			return 1;
		} else {
			return 0;
		}
	}
}

typedef struct GameInfo {
	int rounds;
	int computerScore;
	int playerScore;
} GameInfo;

/*
 * Increments the round and winner's score.
 */
void updateGameInfo(int winner, GameInfo* gameInfo) {
	if(winner == 1) {
		// PLAYER WON
		gameInfo->playerScore++;
	} else {
		// COMPUTER WON
		gameInfo->computerScore++;
	}
	gameInfo->rounds++;
}

/*
 * Displays the winner of the round
 */
void displayWinner(int winner, GameInfo* gameInfo) {
	if(winner == 1) {
		printf("You win this round!\n\n");
	} else {
		printf("You lose this round!\n\n");
	}

	printf("YOU: %d, COMPUTER: %d\n", gameInfo->playerScore, gameInfo->computerScore);
}

/*
 * Resets the gameInfo so a new game could be played
 */
void resetGame(GameInfo* gameInfo) {
	gameInfo->rounds = 0;
	gameInfo->playerScore = 0;
	gameInfo->computerScore = 0;
}

/*
 * Determines if the player or computer has won.
 * If someone has, it will ask the user if they would like to play.
 */
int checkPlaying(GameInfo* gameInfo) {
	if(gameInfo->playerScore >= 3 || gameInfo->computerScore >=3) {
		printf("\n------- \nThe game is over! Would you like to play a new game? ");
		resetGame(gameInfo);
		return wantsToPlay();
	}
	return 1;
}

int main() {
	srand((unsigned int)time(NULL));

	printf("Welcome to Rock, Paper, Scissors\n");
	printf("Would you like to play? ");

	int playing = wantsToPlay();
	int roundWinner;
	printf("\n");

	GameInfo gameInfo = {0, 0, 0};

	while(playing) {
		printf("------\nROUND %d\n", gameInfo.rounds+1);
		char userChoice[10];
		char computerChoice[10];
		getUserChoice(userChoice);
		getComputerChoice(computerChoice);
		roundWinner = computeWinner(userChoice, computerChoice);

		if(roundWinner == 0) {
			printf("Tie!\n");
			continue;
		}

		updateGameInfo(roundWinner, &gameInfo);
		displayWinner(roundWinner, &gameInfo);

		playing = checkPlaying(&gameInfo);
	}

	return 0;
}
