// This is a single comment line

/* These are multiple
   comment lines
*/


/* This C source can be compiled running the command:
   gcc -o hello hello-world.c
   Once compiled, the program can be executed running the command:
   ./hello
*/


// Header file for input output functions
/* In C all lines that start with pound (#) sign are called directives
   The #include directive tells the compiler to include a file and #include<stdio.h>
   tells the compiler to include the header file for Standard Input Output file
   which contains declarations of all the standard input/output library functions.
   More at https://cplusplus.com/reference/cstdio/
*/
#include <stdio.h>

// Main function containing the operations performed by the program
/* This line is used to declare a function named "main" which returns data of integer type.
   A function is a group of statements that are designed to perform a specific task.
   Execution of every C program begins with the main() function, no matter where the function
   is located in the program. So, every C program must have a main() function and this is
   the function where the execution of program begins.
*/
int main(void)

/* { and }: The opening braces '{' indicates the beginning of the main function and
   the closing braces '}' indicates the ending of the main function. Everything
   between these two comprises the body of the main function and are called the blocks.
*/

/* This line tells the compiler to display the message "Hello World" on the screen.
   This line is called a statement in C. Every statement is meant to perform some task.
   A semi-colon ';' is used to end a statement. Semi-colon character at the end of
   the statement is used to indicate that the statement is ending there.
   The printf() function is used to print character stream of data on stdout console.
   Everything within " " is displayed to the output device.
*/
{
    printf("Hello World\n");
    return 0;
}

/* The "return 0;" statement is used to return a value from a function and indicates
   the finishing of a function. This statement is basically used in functions to return
   the results of the operations performed by a function.
*/

/* Indentation: As you can see the printf and the return statement have been indented or moved
   to the right side. This is done to make the code more readable. In a program as Hello World,
   it does not seem to hold much relevance but as the program becomes more complex, it makes
   the code more readable and less error-prone. Therefore, one must always use indentations
   and comments to make the code more readable.
*/

/* Explaination
   https://www.geeksforgeeks.org/c-hello-world-program/
*/

