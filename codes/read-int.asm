.data
	saudacao: .asciiz "Ola. Por favor, informe sua idade: "
	saida: .asciiz "Sua idade eh: "
.text
	li $v0, 4 # imprimir uma string
	la $a0, saudacao
	syscall
	
	li $v0, 5 # leitura de inteiro
	syscall
	
	move $t0, $v0 # valor fornecido esta em $t0
	
	li $v0, 4 # imprimir uma string
	la $a0, saida
	syscall
	
	li $v0, 1 # imprimindo o inteiro fornecido
	move $a0, $t0
	syscall