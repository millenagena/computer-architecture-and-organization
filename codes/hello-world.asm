.data 
# area para especificacao de dados (variaveis) na memoria principal
	
	msg: .asciiz "Ola, mundo!" # string

.text 
# area instrucoes do programa
	
	li $v0, 4 # instrucao para impressao de string
	la $a0, msg # loadadress: indica o endereco que esta a msg
	syscall # imprime oq estiver no registrador a0