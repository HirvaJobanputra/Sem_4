#include <stdio.h>
#include <string.h>
#include <ctype.h>

int isVowel(char ch) {
    ch = tolower(ch);
    return ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u';
}

void swapVowels(char str[]) {
    int i = 0, j = strlen(str) - 1;
    char temp;

    while (i < j) {
        if (isVowel(str[i]) && isVowel(str[j])) {
            temp = str[i];
            str[i] = str[j];
            str[j] = temp;
            i++;
            j--;
        } else if (!isVowel(str[i])) {
            i++;
        } else if (!isVowel(str[j])) {
            j--;
        }
    }
}

int main() {
    char str[100];

    printf("Enter a string: ");
    fgets(str, 100, stdin);

    swapVowels(str);

    printf("String after swapping vowels: %s", str);

    return 0;
}