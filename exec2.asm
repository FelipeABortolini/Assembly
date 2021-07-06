.text
	# 1
	li $t0, 1
	sll $t0, $t0, 1
	or $t0, $t0, 1
	
	# 2
	li $t1, 3
	and $t1, $t1, 0
	
	# 3
	li $t2, 1
	sll $t2, $t2, 3
	not $t2, $t2
	and $t2, 26
	
	# 4
	li $t3, 1
	sll $t3, $t3, 3
	xor $t3, $t3, 26
	
	# 5
	li $t4, 8
	srl $t4, $t4, 1
	
	# 6
	li $t5, 1
	sll $t5, $t5, 3
	li $s0, 1
	sll $s0, $s0, 8
	or $t5, $t5, $s0
	or $t5, $t5, 0
	
	# 7
	li $t6, 1
	sll $t6, $t6, 4
	not $t6, $t6
	or $t6, $t6, 3
	and $t6, $t6, 0xff
	
	# 8
	li $t7, 0xffffffff
	li $s1, 0x55555555
	and  $t7, $t7, $s1
	
	# 9
	li $t8, 0xffff
	li $s2, 0x10000
	or $t8, $t8, $s2
	li $s2, 1
	not $s2, $s2
	and $t8, $t8, $s2
	
	# 10
	li $t9, 0xff
	and $t9, $t9, 0xf0
	or $t9, $t9, 1