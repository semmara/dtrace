#!/usr/sbin/dtrace -s

/* measure runtime of processes and list opened files */

#pragma D option quiet
#pragma D option destructive

proc:::exec
{
	self->path = args[0];
	self->x = 0;
}

/*
* capture target launch (success)
*/
proc:::exec-success
{
	self->start = timestamp;
	self->targetPID = pid;
}

/*
* detect when our target exits
*/
syscall::*exit:entry
/ pid == self->targetPID /
{
	this->end = timestamp;
	this->duration = (this->end - self->start)/1000000;
	printf("%s, %s, %d[ms], %d[opened]", execname, self->path, this->duration, self->x);
	printf("\n");
}

/*
* capture open arguments
*/
syscall::open*:entry
/ ((pid == self->targetPID) || progenyof(self->targetPID)) /
{
	/*printf("%s %s\n", execname, fds[arg0].fi_pathname);*/

	/* EISDIR
		http://www.gnu.org/software/libc/manual/html_node/Opening-and-Closing-Files.html#Opening-and-Closing-Files
	*/
	self->x = self->x + 1;
}
