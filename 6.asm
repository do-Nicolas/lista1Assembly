.data
	msg:.asciiz"Digite o valor de A: "
	msg1:.asciiz"Digite o valor de B: "
	msg2:.asciiz"O valor de C será:  "
.text

main: 
	li $t0, 0
	li $t1, 0
	li $t2, 0
	
	#valor de A
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	#valor de B
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	beq $t0, $t1, se
	j senao
	
	
se:
	add $t2, $t0, $t1
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	j fim
senao:	
	mul $t2, $t0, $t1
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
fim: 
	li $v0, 10
	syscall