korlang:  build test

build: korlang.l
	lex korlang.l
	gcc -o build/korlang lex.yy.c -ll

clean:
	rm korlang lex.yy.c

test: variable_test logical_operations_test
	
variable_test:
	echo "\nVariable Tests"
	cat test/variables.kor | ./build/korlang
	
logical_operations_test:
	echo "\nLogical Operations Test"
	cat test/logics.kor | ./build/korlang