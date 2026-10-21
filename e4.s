.data
msg1: .asciiz "\ninsira o salario atual: "
msg2: .asciiz "\nnovo salario: "
.text
main:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    move $t0, $v0
    mul $t1, $t0, 25
    div $t1, $t1, 100
    add $t1, $t0, $t1
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 1
    move $a0, $t1
    syscall
    li $v0, 10
    syscall