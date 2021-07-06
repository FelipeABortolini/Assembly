.text
	li $v0, 5
	syscall
	
while:
	add $a0, $a0, $v0
	li $v0, 5
	syscall
	bnez $v0, while
	
	li $v0, 1
	syscall