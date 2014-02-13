#!/usr/sbin/dtrace -s

/* see what time machine is looking for */

#pragma D option quiet

syscall::open*:entry
/execname=="backupd"/
{
    self->name = arg0;
}

syscall::open*:return
/execname=="backupd"/
{
    printf ( "%s opening %s\n", execname, copyinstr(self->name));
    self->name = 0;
}
