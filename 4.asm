.data
	msg:.asciiz"Digite a base maior: "
	msg1:.asciiz"Digite a base menor: "
	msg2:.asciiz"Digite a altura: "
	msg3:.asciiz"a área do trapézio é de: "
.text

main: 
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	
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
	
	#altura
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	add $t3, $t1, $t0
	mul $t3, $t3, $t2
	div $t3, $t3, 2
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall