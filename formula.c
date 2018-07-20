#include "formula.h"
    
int main(int argc, char * argv[]){
	char * input = argv[1];
   //checks if input is the help flag 
    if(strcmp(input, "-h") ==0){
        printf("Usage: formula <positive integer>\n");
        return 1;
    }

    int i = 0;
    while(input[i] != '\0'){ //checks if input is all digits
        if(!isdigit(input[i])){
            fprintf(stderr, "ERROR: Invalid input.\n");
            return 0;
        }
        i++;
    }

    int power = atoi(input);//converts string input to int


	if (power < 0){ //throws error if input is negative
		printf("ERROR: Invalid input.\n");
		return 0;
	}
	
	int nCr1 = 0;
	
	int coeff[power];    //creates coefficient array of the size of the input
	
    gettimeofday(&start, NULL); //initializes start time
	for(i = 1; i <= power; i++){
        nCr1 = nCr(power, i);

        if (nCr1 == 0){ // if nCr returns 0, there is overflow and program ends
			fprintf(stderr, "ERROR: Overflow.\n");
			return 0;
		}
        coeff[i-1] = nCr1; //stores copmuted values in coeff array
        
    }
	gettimeofday(&end, NULL); //gets end time

	printf("(1 + x)^%d = 1", power);    
	for(i = 1; i <= power; i++){    //prints all values in coeff array with respect to power
		printf(" + %d*x^%d" , coeff[i-1], i);
	}

    //prints time it takes to compute coefficients 
	printf("\nTime Required: %ld microsecond(s)\n", (end.tv_usec - start.tv_usec));

    return 1;
}
