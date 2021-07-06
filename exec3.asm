.data

A: .word 10
B: .word -2
C: .word

.text
	la $s0, A
	lw $t1, 0($s0)
	
	la $s0, B
	lw $t2, 0($s0)
	
	add $t3, $t1, $t2
	
	la $s0, C
	sw $t3, 0($s0)