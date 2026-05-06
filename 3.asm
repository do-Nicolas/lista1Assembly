.data
	msg:.asciiz"Digite as horas trabalhadas: "
	msg1:.asciiz"Digite as horas extra trabalhadas: "
	msg2:.asciiz"Digite o desconto a ser aplicado: "
	msg3:.asciiz"\nSeu salário bruto é de: "
	msg4:.asciiz"\nSeu salário líquido é de: "
.text

main: 
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	
	#horas
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	#horas extras
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#desconto
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	#calculo
	mul $t0, $t0, 10
	mul $t1, $t1, 15
	add $t3, $t0, $t1
	
	#printar salario bruto
	li $v0, 4
	la $a0, msg3
	syscall

	li $v0, 1
	add $a0, $t3, 0
	syscall
	
	sub $t3, $t3, $t2
	
	#printar salario liquido
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
	li $v0, 10
	syscall
	