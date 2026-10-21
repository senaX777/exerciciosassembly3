.data
msg1: .asciiz "insira um valor em dolar: "
msg2: .asciiz "\nvalor em reais: "
.text
main:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    move $t0, $v0
    mul $t1, $t0, 5
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 1
    move $a0, $t1
    syscall
    li $v0, 10
    syscall