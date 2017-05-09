#include "sys_proc.h"
#include "sched.h"
#include "stdio.h"

void sys_get_proc_num()
{
	printk("This is a system call!\n");
}

void sys_send_message(pid_t recv_from, pid_t send_to, msg_t *msg)
{
	proc_t *proc_from = &procs[recv_from];


	msg_send(proc_from, send_to, msg);
	
	//重新进行调度
	//proc_schedule();	
}

void sys_recv_message(pid_t recv_from, pid_t send_to, msg_t *msg)
{
	proc_t *proc_to = &procs[send_to];
	msg_receive(proc_to, recv_from, msg);
	
	//重新进行调度
	//proc_schedule();
}