.data
	msg1:.asciiz"Digite o valor primeiro lado: "
	msg2:.asciiz"\nDigite o valor do segundo lado: "
	msg3:.asciiz"\nSua área é de: "
.text

main:
	li $t0, 0
	li $t1, 0
		
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	mul $t2, $t1, $t0
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	li $v0, 10
	syscall
	