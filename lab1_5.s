.text
.globl main
main:
    # Ζητάει από τον χρήστη να εισάγει έναν ακέραιο
    li $v0, 4                   # Κώδικας συστήματος για εμφάνιση συμβολοσειράς
    la $a0, inputPrompt         # Διεύθυνση της συμβολοσειράς εισόδου
    syscall                     # Εκτελεί την κλήση συστήματος

    # Διαβάζει έναν ακέραιο από τον χρήστη
    li $v0, 5                   # Κώδικας συστήματος για ανάγνωση ακέραιου
    syscall                     # Εκτελεί την κλήση συστήματος
    move $t0, $v0               # Αποθηκεύει τον ακέραιο στον καταχωρητή $t0

    # Εμφανίζει την απάντηση
    li $v0, 4                   # Κώδικας συστήματος για εμφάνιση συμβολοσειράς
    la $a0, outputMsg           # Διεύθυνση της συμβολοσειράς μηνύματος εξόδου
    syscall                     # Εκτελεί την κλήση συστήματος

    # Εμφανίζει τον ακέραιο που εισήχθη
    li $v0, 1                   # Κώδικας συστήματος για εμφάνιση ακέραιου
    move $a0, $t0               # Ο ακέραιος για εμφάνιση
    syscall                     # Εκτελεί την κλήση συστήματος

    # Τερματισμός του προγράμματος
    li $v0, 10                  # Κώδικας συστήματος για τερματισμό
    syscall                     # Εκτελεί την κλήση συστήματος

.data
inputPrompt: .asciiz "Please enter an integer: "
outputMsg: .asciiz "You entered: "
