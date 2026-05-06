.data
    msg:     .asciiz "Digite um numero (negativo para sair): "
    res0_25: .asciiz "\n[0-25]: "
    res26_50: .asciiz "\n[26-50]: "
    res51_75: .asciiz "\n[51-75]: "
    res76_100:.asciiz "\n[76-100]: "

.text
main:
    li $t0, 0    
    li $t1, 0    
    li $t2, 0   
    li $t3, 0   

leitura:
    # mostra a mensagem e le
    li $v0, 4
    la $a0, msg
    syscall
    li $v0, 5
    syscall
    add $s0, $v0, 0   

    # Condição de parada
    blt $s0, 0, exibir_resultados

    li $t5, 100
    blt $t5, $s0, leitura

    li $t5, 76
    bge $s0, $t5, inc_76_100

    li $t5, 51
    bge $s0, $t5, inc_51_75

    li $t5, 26
    bge $s0, $t5, inc_26_50

    li $t5, 0
    bge $s0, $t5, inc_0_25

    j leitura


inc_76_100:
    add $t3, $t3, 1
    j leitura

inc_51_75:
    add $t2, $t2, 1
    j leitura

inc_26_50:
    add $t1, $t1, 1
    j leitura

inc_0_25:
    add $t0, $t0, 1
    j leitura

exibir_resultados:
    li $v0, 4
    la $a0, res0_25
    syscall
    li $v0, 1
    add $a0, $t0, 0
    syscall
    
    li $v0, 4
    la $a0, res26_50
    syscall
    li $v0, 1
    add $a0, $t1, 0
    syscall
    
    li $v0, 4
    la $a0, res51_75
    syscall
    li $v0, 1
    add $a0, $t2, 0
    syscall
    
     li $v0, 4
    la $a0, res76_100
    syscall
    li $v0, 1
    add $a0, $t3, 0
    syscall
    
    li $v0, 10
    syscall