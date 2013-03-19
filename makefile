all:
	$(CROSS_COMPILE)gcc -o hello_arm hello.c

clean:
	rm -rf *.o

