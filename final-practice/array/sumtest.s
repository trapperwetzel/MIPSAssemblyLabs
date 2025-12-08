.data 
arr: .word 10, 20, 30, 40, 50, 60, 70, 80, 90, 100 
iterator: .word 0
size: .word 9
prompt: .asciiz "Sum of 10, 20, 30, 40, 50, 60, 70, 80, 90, 100 is: "
newline: .asciiz "\n--------------------------------------------------------\n"
singleline: .asciiz "\n"

.text
main:
la $t0, arr
lw $t1, iterator 
lw $t2, size 

begin_loop:
bgt $t1, $t2, exit_loop 

sll $t3, $t1, 2 #get offset
addu $t3, $t3, $t0 #get address 

lw $t6, 0($t3)

addu $t7, $t7, $t6

addi $t1, $t1, 1


j begin_loop

exit_loop:

li $v0, 4
la $a0, newline 
syscall 

li $v0, 4 
la $a0, prompt
syscall 

li $v0, 1
move $a0, $t7
syscall

li $v0, 4
la $a0, newline 
syscall 

li $v0, 4
la $a0, singleline 
syscall 

li $v0, 10
syscall 





