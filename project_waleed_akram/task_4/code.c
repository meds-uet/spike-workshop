// Write your code here
#include <stdio.h>

double power(double x, int n) {
    double result = 1.0;
    for (int i = 0; i < n; i++) {
        result *= x;
    }
    return result;
}


int main() {
    double x = 2.0;
    int n = 3;

    printf("%.2f raised to the power %d is %.2f\n", x, n, power(x, n));
    return 0;
}
