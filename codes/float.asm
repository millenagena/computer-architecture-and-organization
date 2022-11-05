# utilizaremos os registradores do tipo f
# coprocessador 1

.data
	msg: .asciiz "Informe um numero decimal: "
	zero: .float 0.0
.text
	# mostrando a msg inicial
	li $v0, 4
	la $a0, msg
	syscall
	
	# lendo o numero float
	li $v0, 6
	syscall # o valor lido estara em $f0
	
	lwc1 $f1, zero
	add.s $f12, $f1, $f0
	
	# imprime o numero
	li $v0, 2
	syscall
	