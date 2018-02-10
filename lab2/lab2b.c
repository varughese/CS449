#include <stdio.h>

int main() {
	double mercury_strength = 0.38;
	double venus_strength = 0.91;
	double mars_strength = 0.38;
	double jupiter_strength = 2.54;
	double saturn_strength = 1.08;
	double uranus_strength = 0.91;
	double neptune_strength = 1.19;

	printf("Please enter the weight you'd like to convert:");
	int weight;
	scanf("%d", &weight);

	printf("\nHere is the weight on other planets:");
	printf("\n");
	printf("%-20s %4.f lbs\n", "Mercury", weight * mercury_strength); 
	printf("%-20s %4.f lbs\n", "Venus", weight * venus_strength); 
	printf("%-20s %4.f lbs\n", "Mars", weight * mars_strength); 
	printf("%-20s %4.f lbs\n", "Jupiter", weight * jupiter_strength); 
	printf("%-20s %4.f lbs\n", "Saturn", weight * saturn_strength); 
	printf("%-20s %4.f lbs\n", "Uranus", weight * uranus_strength); 
	printf("%-20s %4.f lbs\n", "Neptune", weight * neptune_strength); 
	return 0;
}
