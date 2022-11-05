.text
	li $t0, 32
	li $t1, 5
	
	div $t0, $t1	
	# a parte inteira da divisao vai pra lo
	# o resto vai para hi
	
	# passando a parte inteira pra $s0
	mflo $s0 # move from lo
	
	# passando o resto para $s1
	mfhi $s1 # move from hi