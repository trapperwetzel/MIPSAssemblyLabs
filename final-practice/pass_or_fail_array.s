.data 
  passes: .word 1, 0, 1, 1, 0, 1
  size: .word 5
  iterator: .word 0


.text
main:

la $t0, passes
lw $t1, size
lw $t2, iterator
li $t3, 0

begin_loop:

bgt $t2, $t1, exit_loop 
sll $t4, $t2, 2
addu $t5, $t4, $t0
lw $t6, 0($t5)

li $t7, 1
bne $t6, $t7, next 
addi $t3, $t3, 1

next:

addi $t2, $t2, 1
j begin_loop
  
exit_loop:
  
  move $a0, $t3
  li $v0, 1
  syscall

  li $v0, 10
  syscall 
