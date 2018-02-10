/*
 * Mathew Varughese
 * MAV120
 * Rock Paper Scissors
 *
 * This is a simple program which asks a player to play against the computer in Rock Paper Scissors
 * The user must type some variant of the word "yes" to start the game, and correctly spell
 * their choice of "rock", "paper", or "scissors" for correct behavior.
 *
 * The game is a best out of 5, and the player is prompted to start a new game at the end of each one.
 *
 */

#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>
#include <time.h>

/*
 * This reads a user input and determines whether they said "yes" or not
 */
int wantsToPlay() {
	char userOption[4];
	scanf("%s", userOption);
	printf("\n");
	return tolower(userOption[0]) == 'y';
}

/*
 * Returns that the choice is valid.
 */
int isValidChoice(char *choice) {
	return !strcmp(choice, "rock") || !strcmp(choice, "paper") || !strcmp(choice, "scissors");
}

/*
 * This reads a user input into the char array passed in. If the choice is invalid, it will ask again.
 */
char getPlayerChoice() {
	printf("What is your choice? ");
	char choice[16];
	int invalidChoice = 1;
	while(invalidChoice) {
		scanf("%s", choice);
		if(isValidChoice(choice)) {
			invalidChoice = 0;
		} else {
			printf("...  Enter a valid choice: ");
		}
	};
	return choice[0];
}

/*
 * This randomly chooses a choice for the computer
 */
char getComputerChoice() {
	char choices[3][10] = {"rock", "paper", "scissors"};
	int c = rand() % 3;
	printf("The computer chooses %s. ", choices[c]);
	return choices[c][0];
}

/*
 * This takes two choices and determines the winner as an integer.
 * 'r' respresents Rock ... etc
 *
 * 0 - Tie
 * 1 - Player
 * 2 - Computer
 *
 */
int computeWinner(char playerChoice, char computerChoice) {
	if(playerChoice == 'r') {
		if(computerChoice == 'r') {
			return 0;
		} else if(computerChoice == 'p') {
			return 2;
		} else {
			return 1;
		}
	} else if(playerChoice == 'p') {
		if(computerChoice == 'r') {
			return 1;
		} else if(computerChoice == 'p') {
			return 0;
		} else {
			return 2;
		}
	} else {
		// playerChoice == 's'
		if(computerChoice == 'r') {
			return 2;
		} else if(computerChoice == 'p') {
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
	} else {
		return 1;
	}
}


int main() {
	srand((unsigned int)time(NULL));

	printf("Welcome to Rock, Paper, Scissors\n");
	printf("Would you like to play? ");

	int playing = wantsToPlay();
	int roundWinner;

	GameInfo gameInfo = {0, 0, 0};

	while(playing) {
		printf("------\nROUND %d\n", gameInfo.rounds+1);
		char playerChoice = getPlayerChoice();
		char computerChoice = getComputerChoice();
		roundWinner = computeWinner(playerChoice, computerChoice);

		int isTie = roundWinner == 0;
		if(isTie) {
			printf("Tie!\n");
			continue;
		}

		updateGameInfo(roundWinner, &gameInfo);
		displayWinner(roundWinner, &gameInfo);

		playing = checkPlaying(&gameInfo);
	}

	return 0;
}
