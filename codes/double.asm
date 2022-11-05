# utilizaremos os registradores do tipo f
# coprocessador 1

.data
	msg: .asciiz "Informe um numero decimal: "
	zero: .double 0.0
.text
	# mostrando a msg inicial
	li $v0, 4
	la $a0, msg
	syscall
	
	# lendo o numero float
	li $v0, 7
	syscall # o valor lido estara em $f0
	
	ldc1 $f2, zero
	add.d $f12, $f2, $f0
	
	# imprime o numero
	li $v0, 3
	syscall
	
