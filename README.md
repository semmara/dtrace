dtrace
======
"DTrace can be used to get a global overview of a running system, such as the amount of memory, CPU time, filesystem and network resources used by the active processes. It can also provide much more fine-grained information, such as a log of the arguments with which a specific function is being called, or a list of the processes accessing a specific file." {Wikipedia}

This project contains dtrace script files.

They can be used ...
* ... as a profiler
* ... as a sniffer
* ... as a logger


usage
=====
```
$ sudo su
# dtrace -s <script>
# dtrace -n '<command>'
```

links
=====
* http://www.dtracebook.com/index.php/Main_Page
* http://www.brendangregg.com/dtrace.html
* http://docs.oracle.com/cd/E18752_01/html/817-6223/preface.html
* http://dtrace.org/blogs/brendan/2011/11/25/dtrace-variable-types/
* http://www.oaktable.net/content/getting-started-dtrace
* http://www.cuddletech.com/blog/pivot/entry.php?id=1023
* https://wiki.freebsd.org/DTrace/Examples
* http://stackoverflow.com/questions/1204256/how-to-trace-a-program-from-its-very-beginning-without-running-it-as-root
* [Quickstart](http://www.tablespace.net/quicksheet/dtrace-quickstart.html)
* [Actions and Subroutines](https://wikis.oracle.com/display/DTrace/Actions+and+Subroutines#ActionsandSubroutines-{{progenyof}})


interesting
===========
* http://www.ibm.com/developerworks/aix/library/au-dtraceprobes.html

