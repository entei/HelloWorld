ifndef CROSS_COMPILE
CROSS_COMPILE=./arm/arm-2010.09/bin/arm-none-linux-gnueabi-
endif

all:
  gcc -o hello hello.c

clean:
	rm -rf *.o

cross:
	$(CROSS_COMPILE)gcc -o hello_arm hello.c

x86:
	gcc -o hello_x86 hello.c
