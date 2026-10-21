.data
msg1: .asciiz "insira um valor: "
msg2: .asciiz "\ninsira um valor: "
msg3: .asciiz "\niguais."
msg4: .asciiz "\ndiferentes."
msg5: .asciiz "\nmaior: "
msg6: .asciiz "\nmenor: "
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
    beq $t0, $t1, ig
    j dif
ig:
    li $v0, 4
    la $a0, msg3
    syscall
    li $v0, 10
    syscall
dif:
    li $v0, 4
    la $a0, msg4
    syscall
    bgt $t0, $t1, pmr
    move $t2, $t1
    move $t3, $t0
    j mostrar
pmr:
    move $t2, $t0
    move $t3, $t1
mostrar:
    li $v0, 4
    la $a0, msg5
    syscall
    li $v0, 1
    move $a0, $t2
    syscall
    li $v0, 4
    la $a0, msg6
    syscall
    li $v0, 1
    move $a0, $t3
    syscall
    li $v0, 10
    syscall