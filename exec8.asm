# #include<stdio.h>

# int main(){
#	int i, fat = 1;
#	scanf("%d", &i);
#	while(i!=0){
#		fat *= i;
#		i--;
#	}
#	printf("%d", fat);
#}
#
# i = $v0
# fat = $a0

.text
	li $v0, 5
	syscall
	
	li $a0, 1
	
	beq $v0, 0, equal_zero
	
while:
	mul $a0, $a0, $v0
	sub $v0, $v0, 1
	
	bge $v0, 1, while
	
	li $v0, 1
	syscall
	
	b end
	
equal_zero:
	li $v0, 1
	syscall
	
end:
	li $v0, 10
	syscall