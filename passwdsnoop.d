#!/usr/sbin/dtrace -s

#pragma D option quiet

char got;

BEGIN
{
   printf("Watching for passwd processes.\n");
}

syscall::read:entry
/execname == "passwd"/
{
   got = *(char *)copyin(arg1, 1);
}

syscall::read:return
/execname == "passwd" && arg0 == 1/
{
   printf("%c", got);
}

syscall::rexit:
/execname == "passwd"/
{
   printf("\n");
}
