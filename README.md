## CVE-2019-9897 PuTTY 0.70 and older Denial-of-Service

PoC contains 2 different approaches, one to generate a file which contains over 2MB worth of unicode combining characters; and two a simple TCP server which sends the same amount of combining characters over a socket.  Includes a simple client to ensure the server is sending correctly.

**Running the server script**
> ruby server.rb

**Running the client script**
> ruby client.rb

**Running the generate script**
> ruby gendosfile.rb

To crash PuTTY using the server script open a Raw connection to the machine running the script.

To crash PuTTY using the generated DoS file, place the file on an ssh server then connect and cat it.

> cat dos.txt

https://www.chiark.greenend.org.uk/~sgtatham/putty/releases/0.70.html

*you can't have unicode problems if you don't support unicode* :smirk:

