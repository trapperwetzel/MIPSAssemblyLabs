.data 
  array: .word 1, 10, 100
  message: .asciiz "Number: " 
  newline: .asciiz "\n"

.text
  main:
  la $t0, array
  lw $t1, 0($t0)
  lw $t2, 4($t0)
  lw $t3, 8($t0)
  
  j end_block


  end_block:

  li $v0, 4
  la $a0, message 
  syscall

  li $v0, 1
  move $a0, $t1
  syscall

  li $v0, 4
  la $a0, newline
  syscall

  li $v0, 4
  la $a0, message 
  syscall

  li $v0, 1
  move $a0, $t2
  syscall

  li $v0, 4
  la $a0, newline
  syscall

  li $v0, 4
  la $a0, message 
  syscall

  li $v0, 1
  move $a0, $t3
  syscall

  li $v0, 4
  la $a0, newline
  syscall

  li $v0, 10
  syscall

