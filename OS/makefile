all: bootloader

bootloader:
	nasm  boot/boot.asm -o boot/boot.img

clear: 
	rm -f boot/boot.img
	
run: 
	qemu-system-x86_64.exe -L "C:/Program Files/qemu"	-m 64 -fda ./boot/boot.img


