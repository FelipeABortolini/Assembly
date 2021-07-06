.data

A: .word 10
B: .word 2
C: .word -5

.text
	la $s0, A
	lw $s1, 0($s0)   # $s1 = A = 10
	
	la $s0, B
	lw $s2, 0($s0)   # $s2 = B = 2
	
	la $s0, C
	lw $s3, 0($s0)   # $s3 = C = -5
	
	# 1
	divu $t0, $s2, 2
	add $t0, $t0, $s1
	mul $t0, $t0, 3
	sub $t0, $t0, 1	
	
	# 2
	mul $t1, $s3, $s1
	div $t1, $t1, $s2
	
	# 3
	mul $t2, $s1, $s1
	mul $a0, $s2, 2
	sub $a0, $a0, $s3
	add $t2, $t2, $a0
	
	# 4
	mul $a0, $s2, $s3
	add $a0, $a0, $s2
	sw $a0, 0($s0)       # C = -8
	
	# 5
	lw $s3, 0($s0)       # $s3 = C = -8
	mul $t3, $s3, $s2
	mul $t3, $t3, $s1
	
	# 6
	mul $a0, $s2, $s2
	mul $a0, $a0, -1
	mul $t4, $s1, 4
	mul $t4, $t4, $s2
	sub $t4, $a0, $t4