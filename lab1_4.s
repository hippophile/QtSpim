
# Program to read a string from a user, and print that string back to the console. 

.text
main:
    li $v0, 4                         # Set syscall number for print string
    la $a0, prompt                    # Load address of the prompt string into $a0
    syscall                           # Execute syscall (print string)

    li $v0, 8                         # Set syscall number for read string
    la $a0, input                     # Load address of the buffer to store input string
    li $a1, 80                        # Load the maximum number of characters to read into $a1
    syscall                           # Execute syscall (read string)

    li $v0, 4                         # Set syscall number for print string
    la $a0, input                     # Load address of the input buffer (now contains user input)
    syscall                           # Execute syscall (print string)

    li $v0, 10                        # Set syscall number for exit
    syscall                           # Execute syscall (exit program)

.data
input:        .space 81              # Reserve 81 bytes of space for the input buffer
## inputSize:    .word 80               # Store the number 80 (maximum string length minus one for null-termination)
prompt:       .asciiz "Please enter a string: " # Store null-terminated string used as a prompt
output:       .asciiz "\nYou typed the string: "  # Store null-terminated string used before displaying user input
