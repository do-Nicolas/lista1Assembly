.data
	msg:.asciiz"Digite o primeiro valor [nao pode ser 0]: "
	msg1:.asciiz"Digite o segundo valor [também nao pode ser 0]: "
	msg2:.asciiz"O resto dessa divisão é: "
	erro:.asciiz"ERRO! voce digitou 0. Digite os valores novamente.\n"
.text

main: 
	#valor de 1
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	beqz $t0, equalZero
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	beqz $t1, equalZero
	j maiorPrimeiro
	
equalZero: 
	li $v0, 4
	la $a0, erro
	syscall
	j main
maiorPrimeiro:
	blt $t0, $t1, menorPrimeiro
	add $t2, $t0, 0 # Maior
	add $t3, $t1, 0 # Menor
	j validado

menorPrimeiro:
	add $t2, $t1, 0 # Maior 
	add $t3, $t0, 0 # Menor
	j validado
	
validado:
	div $t4, $t2, $t3       
	mul $t4, $t3, $t4   
	sub $t5, $t2, $t4   
	
	li $v0, 4
   	la $a0, msg2
    	syscall
    	
    	li $v0, 1
   	add $a0, $t5, 0
   	syscall
   	
   	li $v0, 10
  	syscall