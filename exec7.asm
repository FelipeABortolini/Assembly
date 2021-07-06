# #include<stdio.h>
#
# int main(){ 
#	int i, cont = 0, ant = 0, aux, fib = 1;
#	scanf("%d", &i);
#	while(cont < i){
#		if(cont == 0){
#			printf("%d ", ant);
#			printf("%d ", fib);
#		}
#		aux = fib;
#		fib += ant;
#		ant = aux;
#		printf("%d ", fib);
#		cont++;
#	}
# }

# i = $t3
# cont = $t0
# ant = $t1
# aux = $t2
# fib = $a0

.text
	li $v0, 5
	syscall
	
	blt $v0, 1, end
	
	beq $v0, 1, equal_one
	
	beq $v0, 2, equal_two
	
	sub $t3, $v0, 2 
	
while:
	beqz $t0, start
exit_start:
	add $t2, $a0, 0
	add $a0, $a0, $t1
	add $t1, $t2, 0
	
	li $v0, 1
	syscall
	
	add $t2, $a0, 0
	
	li $a0, 32
	li $v0, 11
	syscall
	
	add $a0, $t2, 0
	
	add $t0, $t0, 1
	blt $t0, $t3, while
	
	b end
	
start:
	li $a0, 0
	li $v0, 1
	syscall
	
	li $a0, 32
	li $v0, 11
	syscall
	
	li $a0, 1
	li $v0, 1
	syscall
	
	li $a0, 32
	li $v0, 11
	syscall
	
	li $a0, 1
	
	b exit_start
	
equal_one:
	li $a0, 0
	li $v0, 1
	syscall
	
	b end
	
equal_two:
	li $a0, 0
	li $v0, 1
	syscall
	
	li $a0, 32
	li $v0, 11
	syscall
	
	li $a0, 1
	li $v0, 1
	syscall
	
end:
	li $v0, 10
	syscall