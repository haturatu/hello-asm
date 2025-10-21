```bash
sudo pacman -S nasm
```

```bash
cd amd64
nasm -f elf64 -o hello_exit0.o hello_exit0.asm
ld -o hello_exit0 hello_exit0.o
./hello_exit0
```

