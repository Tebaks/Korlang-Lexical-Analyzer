default:  korlang test

korlang: korlang.l
	lex korlang.l
	gcc -o build/korlang lex.yy.c -ll

clean:
	rm korlang lex.yy.c

test: variable_test
	
variable_test:
	echo "\nVariable Tests"
	cat test/variables.kor | ./build/korlang