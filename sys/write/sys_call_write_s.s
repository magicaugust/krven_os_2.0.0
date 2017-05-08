[BITS 32]
[SECTION .text]

%include "sys.inc"

;屏幕打印系统调用
[GLOBAL write]
write:	
	
	;系统调用号
	mov		eax, SYS_WRITE
	mov		ebx, [esp + 4]
	int		SYS_INT_NO
	ret

[GLOBAL write_clear]
write_clear

	;
	mov		eax, SYS_WRITE_CLEAR
	int		SYS_INT_NO
	ret

;修改打印颜色系统调用
[GLOBAL alert_write_color]
alert_write_color:
	
	;系统调用号
	mov		eax, SYS_ALERT_WRITE_COLOR
	mov		ebx, [esp + 4]
	mov		ecx, [esp + 8]
	int		SYS_INT_NO
	ret

[GLOBAL write_color]
write_color:
	
	;
	mov		eax, SYS_WRITE_COLOR
	mov		ebx, [esp + 4]
	mov		ecx, [esp + 8]
	mov		edx, [esp + 12]
	int		SYS_INT_NO
	ret
