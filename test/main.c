#include <assert.h>
#include "../src/math_functions.h"

int main(){
printf("test 1");
int inputX = 5;
int inputY = 6;
int valeurAttendue = 11;
int valeurObtenue = addition(inputX, inputY);
assert(valeurObtenue == valeurAttendue);

printf("Tous les tests sont bien passés\n");
return 0;
}

