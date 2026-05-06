.data
	msg:.asciiz"Digite a quantidade de camisas pequenas: "
	msg1:.asciiz"\nDigite a quantidade de camisas médias: "
	msg2:.asciiz"\nDigite a quantidade de camisas grandes: "
	msg3:.asciiz"\O dinheiro arrecadado foi de : "
	reais:.asciiz" reais"
.text

main:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	mul $t0, $t0, 10
	mul $t1, $t1, 12
	mul $t2, $t2, 15
	
	add $t3, $t2, $t1
	add $t3, $t3, $t0
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
	li $v0, 4
	la $a0, reais
	syscall
	
	li $v0, 10
	syscall
	