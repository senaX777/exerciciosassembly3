.data
msg1: .asciiz "Valor da compra: "
msg2: .asciiz "\nvalor da parcela: "
msg3: .asciiz "\nvalor invalido!"
msg4: .asciiz "\nparcelas: "
.text
main:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    move $t0, $v0
    blt $t0, 1000, er
    bgt $t0, 9999, er
    j parcela
er:
    li $v0, 4
    la $a0, msg3
    syscall
    j main
prcl:
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 5
    syscall
    move $t1, $v0
    blt $t1, 100, er2
    bgt $t1, 500, er2
    j calc
er2:
    li $v0, 4
    la $a0, msg3
    syscall
    j prcl
calc:
    div $t2, $t0, $t1
    rem $t3, $t0, $t1
    beq $t3, $zero, mostrar
    addi $t2, $t2, 1
mostrar:
    li $v0, 4
    la $a0, msg4
    syscall
    li $v0, 1
    move $a0, $t2
    syscall
    li $v0, 10
    syscall