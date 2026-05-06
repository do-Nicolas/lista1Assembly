.data
	msg:.asciiz"Digite o cateto adjascente: "
	msg1:.asciiz"Digite o cateto oposto: "
	msg3:.asciiz"a hipotenusa do triangulo é de:  "
.text

main: 
	li $t0, 0
	li $t1, 0
	li $t2, 0
	
	#base maior
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	#base menor
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#parei aqui
	#falta fazer a conta da hipotenusa
	