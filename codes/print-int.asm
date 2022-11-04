.data
	idade: .word 56 # valor inteiro na memoria RAM
.text
	li $v0, 1 # imprimir inteiro
	lw $a0, idade # load word: buscar o valor no endereco
	syscall