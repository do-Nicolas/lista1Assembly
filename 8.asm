.data
	msg:.asciiz"Digite o valor: "
	msg1:.asciiz"O valor dobrado é: "
	msg2:.asciiz"O valor triplicado é: "
.text

main: 
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	blt $t0, 0, negativo
	j positivo
negativo: 
	mul $t0, $t0, 3
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	
	j fim		
positivo: 
	mul $t0, $t0, 2
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	
fim:
	li $v0, 10
	syscall
