#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define VERBOSE 1

const uint8_t RULE = 110;
const int SIZE = 75;
const int STEPS = 72;

const char ALIVE[4] = "\u25A0";
const char DEAD[4] = "\u25A1";

const uint8_t CLEAR = 7; // 0b111

void printGen(uint8_t* gen) {
	for (int i = 0; i < SIZE; i++)
		printf("%s ", gen[i] ? ALIVE : DEAD);
	printf("\n");
}

uint8_t map(uint8_t mask) {
	return (RULE >> mask) & 1;
}

void generate(uint8_t** currPtr) {
	uint8_t* curr = *currPtr;
	uint8_t* next  = malloc(SIZE * sizeof(uint8_t));

	next[0] = next[SIZE-1] = 0;

	uint8_t mask = curr[0] << 1 | curr[1];

	for (int i = 1; i < SIZE-1; i++) {
		mask = (mask << 1) & CLEAR | curr[i+1];
		next[i] = map(mask);
	}

	if (VERBOSE) printGen(curr);

	(*currPtr) = next;
}

int main(int argc, char* argv[]) {
	uint8_t* initial = calloc(SIZE, sizeof(uint8_t));
	initial[SIZE-2] = 1;

	for (int gen = 0; gen <= STEPS; gen++) generate(&initial);
}
