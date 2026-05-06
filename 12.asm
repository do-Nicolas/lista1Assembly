.data
    msg_pedir: .asciiz "Digite a altura em cm: "
    msg_menor: .asciiz "\nA menor altura e: "
    msg_maior: .asciiz "\nA maior altura e: "

.text
main:
    li $t0, 15
    
 
    li $v0, 4
    la $a0, msg_pedir
    syscall
    li $v0, 5
    syscall
    add $t1, $v0, 0     
    
    add $t2, $t1, 0
    add $t3, $t1, 0    
    
    sub $t0, $t0, 1     

loop:
    beqz $t0, exibir    
    
    li $v0, 4
    la $a0, msg_pedir
    syscall
    li $v0, 5
    syscall
    add $t1, $v0, 0     
    

    blt $t1, $t2, atualizar_menor

checar_maior:
    blt $t3, $t1, atualizar_maior

proximo:
    sub $t0, $t0, 1     
    j loop

atualizar_menor:
    add $t2, $t1, 0     
    j checar_maior    

atualizar_maior:
    add $t3, $t1, 0     
    j proximo           

exibir:
    li $v0, 4
    la $a0, msg_menor
    syscall
    li $v0, 1
    add $a0, $t2, 0
    syscall
    
    li $v0, 4
    la $a0, msg_maior
    syscall
    li $v0, 1
    add $a0, $t3, 0
    syscall

    li $v0, 10
    syscall