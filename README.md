dtrace
======
"DTrace can be used to get a global overview of a running system, such as the amount of memory, CPU time, filesystem and network resources used by the active processes. It can also provide much more fine-grained information, such as a log of the arguments with which a specific function is being called, or a list of the processes accessing a specific file." {Wikipedia}

This project contains dtrace script files.

They can be used ...
... as a profiler
... as a sniffer
... as a logger


usage
=====
$ sudo su
# dtrace -s <script>
# dtrace -n '<command>'


LINKS
=====
http://www.dtracebook.com/index.php/Main_Page

