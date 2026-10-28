#include<stdio.h>
#include<fcntl.h>
#include<unistd.h>
void main()
{
int pid,fd,retval;
fd=open("temp",O_RDWR);
pid=fork();
if(pid==0)
{
retval=lockf(fd,F_LOCK,101);
if(retval==1)
printf("\n CHILD CANT LOCK 1-20 BYTEs\n");
else
printf("\n CHILD LOCKS 1-20 BYTES\n");
lseek(fd,101,0);
retval=lockf(fd,F_LOCK,101);
if(retval==1)
printf("\n CHILD CANNOT LOCK 20-25 BYTES \n");
else
printf("CHILD CANNOT LOCK 20-25 BYTES\n");
printf("\n CHILD PROCESS OVER\n");
}
else
{
lseek(fd,101,0);
retval=lockf(fd,F_LOCK,51);
if(retval==1)
printf("\n PARENT LOCK 20-25 BYTES \n");
printf("PARENT PROCESS OVER");
}
}