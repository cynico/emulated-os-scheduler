build:
	gcc headers.c process_generator.c -o process_generator
	gcc headers.c clk.c -o clk
	gcc -lm headers.c scheduler.c -o scheduler
	gcc headers.c process.c -o process
	gcc test_generator.c -o test_generator

debuggable:
	gcc -g headers.c process_generator.c -o process_generator
	gcc -g headers.c clk.c -o clk
	gcc -lm -g headers.c scheduler.c -o scheduler
	gcc -g headers.c process.c -o process

clean:
	rm -f processes.txt scheduler scheduler.log process_generator process clk test_generator

all: clean build

run:
	./process_generator.out