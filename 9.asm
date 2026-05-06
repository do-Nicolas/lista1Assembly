.data
	msg:.asciiz"Digite o primeiro valor: "
	msg1:.asciiz"Digite o segundo valor [nao pode ser 0]: "
	msg2:.asciiz"Sua divisão resulta em: "
	erro:.asciiz"ERRO! voce digitou 0\n"
.text

main: 
	li $t0, 0
	li $t1, 0
	li $t2, 0
	#valor de 1
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
	
	beqz $t1, equalZero
	j validado
	
equalZero: 
	li $v0, 4
	la $a0, erro
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	beqz $t1, equalZero

	
validado:
	div $t2, $t0, $t1
	
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 1
	add $a0, $t2, 0
	syscall