.data
	msg: .asciiz "Informe um numero: "
	par: .asciiz "O numero eh par"
	impar: .asciiz "O numero eh impar"
.text

	# imprimindo a string inicial
	li $v0, 4
	la $a0, msg
	syscall
	
	# lendo o numero
	li $v0, 5
	syscall
	move $t0, $v0
	
	# dividindo o numero por 2
	li $t1, 2
	div $t0, $t1
	mfhi $s0 # salvando o resto em s0
	
	# se o resto for igual a 0 o numero eh par
	# se nao, eh impar
	beq $s0, $zero, imprimePar
	
	# imprimindo a string impar
	li $v0, 4
	la $a0, impar
	syscall
	
	# encerrar o programa
	li $v0, 10
	syscall
	
	imprimePar:
		# imprimindo a string par
		li $v0, 4
		la $a0, par
		syscall
	
	
	