.data
	pergunta: .asciiz "Qual eh o seu nome: "
	saudacao: .asciiz "Ola, "
	nome: .space 25
.text
	# mostrando a msg inicial
	li $v0, 4
	la $a0, pergunta
	syscall
	
	# lendo o nome - string
	li $v0, 8
	la $a0, nome
	la $a1, 25
	syscall
	
	# mostrando a msg saudacao
	li $v0, 4
	la $a0, saudacao
	syscall
	
	# imprime a variavel nome
	# mostrando a msg inicial
	li $v0, 4
	la $a0, nome
	syscall
	
	