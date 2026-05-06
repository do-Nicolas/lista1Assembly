.data
	msg:.asciiz"Digite o seu valor: "
	msg1:.asciiz"valor final: "

.text

main: 
	li $t0, 0
	li $t1, 0
	li $t2, 0
	
	#le variavel
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	rem $t1, $t0, 2
	beq $t1, 0, par
	j impar
	
par:
	add $t0, $t0, 5
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	j fim

impar:
	add $t0, $t0, 8
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	
fim:
	li $v0, 10
	syscall