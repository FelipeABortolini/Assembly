.text
	li $v0, 5
	syscall
	
	ble $v0, 5, first_less_equal_then
	ble $v0, 10,  second_less_equal_then
	li $t1, 400
	b price
	
first_less_equal_then:
	li $t1, 500
	b price
	
second_less_equal_then:
	li $t1, 450
	b price
	
price:
	mul $a0, $v0, $t1
	
	li $v0, 1
	syscall