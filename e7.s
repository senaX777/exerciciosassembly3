.data
msg1: .asciiz "insira u valor entre 100 e 999: "
msg2: .asciiz "\ncentena = "
msg3: .asciiz "\ndezena = "
msg4: .asciiz "\nunidade = "
msg5: .asciiz "\nvalor invalido!"
.text
main:
ler:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    move $t0, $v0
    blt $t0, 100, er
    bgt $t0, 999, er
    div $t1, $t0, 100
    rem $t2, $t0, 100
    div $t3, $t2, 10
    rem $t4, $t2, 10
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 1
    move $a0, $t1
    syscall
    li $v0, 4
    la $a0, msg3
    syscall
    li $v0, 1
    move $a0, $t3
    syscall
    li $v0, 4
    la $a0, msg4
    syscall
    li $v0, 1
    move $a0, $t4
    syscall
    li $v0, 10
    syscall
er:
    li $v0, 4
    la $a0, msg5
    syscall
    j ler