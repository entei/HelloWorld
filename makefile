ifndef CROSS_COMPILE
CROSS_COMPILE=./arm/arm-2010.09/bin/arm-none-linux-gnueabi-
endif

all:
rm -rf output
mkdir output
gcc -o ./output/HW ./src/BS_Task1_HW.c
$(CROSS_COMPILE)gcc -o ./output/HW_arm ./src/BS_Task1_HW.c

clean:
rm -rf output

cross:
rm -rf output
mkdir output
$(CROSS_COMPILE)gcc -o ./output/HW_arm ./src/BS_Task1_HW.c

x86:
rm -rf output
mkdir output
gcc -o ./output/HW ./src/BS_Task1_HW.c
