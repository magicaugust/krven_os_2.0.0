[BITS 32]
[SECTION .text]

%include "sys.inc"

[GLOBAL get_proc_num]
get_proc_num:
	
	push	dword esp
	push	dword SYS_PROC_NUM
	int	 	SYS_INT_NO
	add		esp, 8
	ret	

[GLOBAL recv_message]
recv_message:
	
	push	dword esp
	push	dword SYS_RECV_MESSAGE
	int		SYS_INT_NO
	add		esp, 8
	ret

[GLOBAL send_message]
send_message:
	
	push	dword esp
	push	dword SYS_SEND_MESSAGE
	int		SYS_INT_NO
	add		esp, 8
	ret
	