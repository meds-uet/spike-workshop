#include <stdio.h>

int sum(int *arr, int n) {
    int total = 0;
    for (int i = 0; i < n; i++)
        total += arr[i];
    return total;
}

int main() {
    int data[] = {1,2,3,4,5};
    return sum(data, 5);
}
