.data
	maior: .asciiz "O numero eh maior que zero."
	menor: .asciiz "O numero eh menor que zero."
	igual: .asciiz "O numero eh igual a 0"
.text
	# ler numero inteiro
	li $v0, 5
	syscall
	move $t0, $v0
	
	# se for igual a 0
	beq $t0, $zero, imprimeIgual
	
	# se for maior que 0
	bgt $t0, $zero, imprimeMaior
	
	# se for menor que 0
	blt $t0, $zero, imprimeMenor
	
	imprimeIgual:
		li $v0, 4
		la $a0, igual
		syscall
		
		# encerra o programa
		li $v0, 10
		syscall
	
	imprimeMaior:
		li $v0, 4
		la $a0, maior
		syscall
		
		# encerra o programa
		li $v0, 10
		syscall
		
	imprimeMenor:
		li $v0, 4
		la $a0, menor
		syscall