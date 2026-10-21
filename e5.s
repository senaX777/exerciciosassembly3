.data
msg1: .asciiz "insira o coeficiente a: "
msg2: .asciiz "\ninsira o coeficiente b: "
msg3: .asciiz "\ninsira o cofeciente c: "
msg4: .asciiz "\nambas irreais"
msg5: .asciiz "\numa real"
msg6: .asciiz "\nambas irreais"
.text
main:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    move $t0, $v0
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 5
    syscall
    move $t1, $v0
    li $v0, 4
    la $a0, msg3
    syscall
    li $v0, 5
    syscall
    move $t2, $v0
    mul $t3, $t1, $t1
    mul $t4, $t0, $t2
    mul $t4, $t4, 4
    sub $t3, $t3, $t4
    bgtz $t3, duas
    beq $t3, $zero, uma
    j nenhuma
duas:
    li $v0, 4
    la $a0, msg4
    syscall
    li $v0, 10
    syscall
uma:
    li $v0, 4
    la $a0, msg5
    syscall
    li $v0, 10
    syscall
nenhuma:
    li $v0, 4
    la $a0, msg6
    syscall
    li $v0, 10
    syscall