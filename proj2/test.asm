
test:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400200 <.interp>:
  400200:	2f                   	(bad)  
  400201:	6c                   	ins    BYTE PTR es:[rdi],dx
  400202:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
  400209:	2d 6c 69 6e 75       	sub    eax,0x756e696c
  40020e:	78 2d                	js     40023d <_init-0x11b>
  400210:	78 38                	js     40024a <_init-0x10e>
  400212:	36                   	ss
  400213:	2d 36 34 2e 73       	sub    eax,0x732e3436
  400218:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  400219:	2e 32 00             	xor    al,BYTE PTR cs:[rax]

Disassembly of section .note.ABI-tag:

000000000040021c <.note.ABI-tag>:
  40021c:	04 00                	add    al,0x0
  40021e:	00 00                	add    BYTE PTR [rax],al
  400220:	10 00                	adc    BYTE PTR [rax],al
  400222:	00 00                	add    BYTE PTR [rax],al
  400224:	01 00                	add    DWORD PTR [rax],eax
  400226:	00 00                	add    BYTE PTR [rax],al
  400228:	47                   	rex.RXB
  400229:	4e 55                	rex.WRX push rbp
  40022b:	00 00                	add    BYTE PTR [rax],al
  40022d:	00 00                	add    BYTE PTR [rax],al
  40022f:	00 02                	add    BYTE PTR [rdx],al
  400231:	00 00                	add    BYTE PTR [rax],al
  400233:	00 06                	add    BYTE PTR [rsi],al
  400235:	00 00                	add    BYTE PTR [rax],al
  400237:	00 12                	add    BYTE PTR [rdx],dl
  400239:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .note.gnu.build-id:

000000000040023c <.note.gnu.build-id>:
  40023c:	04 00                	add    al,0x0
  40023e:	00 00                	add    BYTE PTR [rax],al
  400240:	14 00                	adc    al,0x0
  400242:	00 00                	add    BYTE PTR [rax],al
  400244:	03 00                	add    eax,DWORD PTR [rax]
  400246:	00 00                	add    BYTE PTR [rax],al
  400248:	47                   	rex.RXB
  400249:	4e 55                	rex.WRX push rbp
  40024b:	00 40 10             	add    BYTE PTR [rax+0x10],al
  40024e:	9f                   	lahf   
  40024f:	33 f9                	xor    edi,ecx
  400251:	7b ef                	jnp    400242 <_init-0x116>
  400253:	ab                   	stos   DWORD PTR es:[rdi],eax
  400254:	10 87 0f 7c d7 55    	adc    BYTE PTR [rdi+0x55d77c0f],al
  40025a:	5e                   	pop    rsi
  40025b:	da                   	.byte 0xda
  40025c:	81                   	.byte 0x81
  40025d:	51                   	push   rcx
  40025e:	c7                   	(bad)  
  40025f:	6b                   	.byte 0x6b

Disassembly of section .gnu.hash:

0000000000400260 <.gnu.hash>:
  400260:	01 00                	add    DWORD PTR [rax],eax
  400262:	00 00                	add    BYTE PTR [rax],al
  400264:	01 00                	add    DWORD PTR [rax],eax
  400266:	00 00                	add    BYTE PTR [rax],al
  400268:	01 00                	add    DWORD PTR [rax],eax
	...

Disassembly of section .dynsym:

0000000000400280 <.dynsym>:
	...
  400298:	01 00                	add    DWORD PTR [rax],eax
  40029a:	00 00                	add    BYTE PTR [rax],al
  40029c:	20 00                	and    BYTE PTR [rax],al
	...
  4002ae:	00 00                	add    BYTE PTR [rax],al
  4002b0:	1a 00                	sbb    al,BYTE PTR [rax]
  4002b2:	00 00                	add    BYTE PTR [rax],al
  4002b4:	12 00                	adc    al,BYTE PTR [rax]
	...

Disassembly of section .dynstr:

00000000004002c8 <.dynstr>:
  4002c8:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
  4002cb:	67 6d                	ins    DWORD PTR es:[edi],dx
  4002cd:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  4002ce:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4002cf:	5f                   	pop    rdi
  4002d0:	73 74                	jae    400346 <_init-0x12>
  4002d2:	61                   	(bad)  
  4002d3:	72 74                	jb     400349 <_init-0xf>
  4002d5:	5f                   	pop    rdi
  4002d6:	5f                   	pop    rdi
  4002d7:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
  4002db:	63 2e                	movsxd ebp,DWORD PTR [rsi]
  4002dd:	73 6f                	jae    40034e <_init-0xa>
  4002df:	2e 36 00 5f 5f       	cs add BYTE PTR cs:ss:[rdi+0x5f],bl
  4002e4:	6c                   	ins    BYTE PTR es:[rdi],dx
  4002e5:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
  4002ec:	72 74                	jb     400362 <_init+0xa>
  4002ee:	5f                   	pop    rdi
  4002ef:	6d                   	ins    DWORD PTR es:[rdi],dx
  4002f0:	61                   	(bad)  
  4002f1:	69 6e 00 47 4c 49 42 	imul   ebp,DWORD PTR [rsi+0x0],0x42494c47
  4002f8:	43 5f                	rex.XB pop r15
  4002fa:	32 2e                	xor    ch,BYTE PTR [rsi]
  4002fc:	32 2e                	xor    ch,BYTE PTR [rsi]
  4002fe:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

0000000000400300 <.gnu.version>:
  400300:	00 00                	add    BYTE PTR [rax],al
  400302:	00 00                	add    BYTE PTR [rax],al
  400304:	02 00                	add    al,BYTE PTR [rax]

Disassembly of section .gnu.version_r:

0000000000400308 <.gnu.version_r>:
  400308:	01 00                	add    DWORD PTR [rax],eax
  40030a:	01 00                	add    DWORD PTR [rax],eax
  40030c:	10 00                	adc    BYTE PTR [rax],al
  40030e:	00 00                	add    BYTE PTR [rax],al
  400310:	10 00                	adc    BYTE PTR [rax],al
  400312:	00 00                	add    BYTE PTR [rax],al
  400314:	00 00                	add    BYTE PTR [rax],al
  400316:	00 00                	add    BYTE PTR [rax],al
  400318:	75 1a                	jne    400334 <_init-0x24>
  40031a:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
  400320:	2c 00                	sub    al,0x0
  400322:	00 00                	add    BYTE PTR [rax],al
  400324:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

0000000000400328 <.rela.dyn>:
  400328:	f8                   	clc    
  400329:	07                   	(bad)  
  40032a:	60                   	(bad)  
  40032b:	00 00                	add    BYTE PTR [rax],al
  40032d:	00 00                	add    BYTE PTR [rax],al
  40032f:	00 06                	add    BYTE PTR [rsi],al
  400331:	00 00                	add    BYTE PTR [rax],al
  400333:	00 01                	add    BYTE PTR [rcx],al
	...

Disassembly of section .rela.plt:

0000000000400340 <.rela.plt>:
  400340:	18 08                	sbb    BYTE PTR [rax],cl
  400342:	60                   	(bad)  
  400343:	00 00                	add    BYTE PTR [rax],al
  400345:	00 00                	add    BYTE PTR [rax],al
  400347:	00 07                	add    BYTE PTR [rdi],al
  400349:	00 00                	add    BYTE PTR [rax],al
  40034b:	00 02                	add    BYTE PTR [rdx],al
	...

Disassembly of section .init:

0000000000400358 <_init>:
  400358:	48 83 ec 08          	sub    rsp,0x8
  40035c:	e8 5b 00 00 00       	call   4003bc <call_gmon_start>
  400361:	e8 ea 00 00 00       	call   400450 <frame_dummy>
  400366:	e8 d5 01 00 00       	call   400540 <__do_global_ctors_aux>
  40036b:	48 83 c4 08          	add    rsp,0x8
  40036f:	c3                   	ret    

Disassembly of section .plt:

0000000000400370 <__libc_start_main@plt-0x10>:
  400370:	ff 35 92 04 20 00    	push   QWORD PTR [rip+0x200492]        # 600808 <_GLOBAL_OFFSET_TABLE_+0x8>
  400376:	ff 25 94 04 20 00    	jmp    QWORD PTR [rip+0x200494]        # 600810 <_GLOBAL_OFFSET_TABLE_+0x10>
  40037c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400380 <__libc_start_main@plt>:
  400380:	ff 25 92 04 20 00    	jmp    QWORD PTR [rip+0x200492]        # 600818 <_GLOBAL_OFFSET_TABLE_+0x18>
  400386:	68 00 00 00 00       	push   0x0
  40038b:	e9 e0 ff ff ff       	jmp    400370 <_init+0x18>

Disassembly of section .text:

0000000000400390 <_start>:
  400390:	31 ed                	xor    ebp,ebp
  400392:	49 89 d1             	mov    r9,rdx
  400395:	5e                   	pop    rsi
  400396:	48 89 e2             	mov    rdx,rsp
  400399:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40039d:	50                   	push   rax
  40039e:	54                   	push   rsp
  40039f:	49 c7 c0 a0 04 40 00 	mov    r8,0x4004a0
  4003a6:	48 c7 c1 b0 04 40 00 	mov    rcx,0x4004b0
  4003ad:	48 c7 c7 74 04 40 00 	mov    rdi,0x400474
  4003b4:	e8 c7 ff ff ff       	call   400380 <__libc_start_main@plt>
  4003b9:	f4                   	hlt    
  4003ba:	90                   	nop
  4003bb:	90                   	nop

00000000004003bc <call_gmon_start>:
  4003bc:	48 83 ec 08          	sub    rsp,0x8
  4003c0:	48 8b 05 31 04 20 00 	mov    rax,QWORD PTR [rip+0x200431]        # 6007f8 <_DYNAMIC+0x190>
  4003c7:	48 85 c0             	test   rax,rax
  4003ca:	74 02                	je     4003ce <call_gmon_start+0x12>
  4003cc:	ff d0                	call   rax
  4003ce:	48 83 c4 08          	add    rsp,0x8
  4003d2:	c3                   	ret    
  4003d3:	90                   	nop
  4003d4:	90                   	nop
  4003d5:	90                   	nop
  4003d6:	90                   	nop
  4003d7:	90                   	nop
  4003d8:	90                   	nop
  4003d9:	90                   	nop
  4003da:	90                   	nop
  4003db:	90                   	nop
  4003dc:	90                   	nop
  4003dd:	90                   	nop
  4003de:	90                   	nop
  4003df:	90                   	nop

00000000004003e0 <__do_global_dtors_aux>:
  4003e0:	55                   	push   rbp
  4003e1:	48 89 e5             	mov    rbp,rsp
  4003e4:	53                   	push   rbx
  4003e5:	48 83 ec 08          	sub    rsp,0x8
  4003e9:	80 3d 38 04 20 00 00 	cmp    BYTE PTR [rip+0x200438],0x0        # 600828 <completed.6349>
  4003f0:	75 4b                	jne    40043d <__do_global_dtors_aux+0x5d>
  4003f2:	bb 58 06 60 00       	mov    ebx,0x600658
  4003f7:	48 8b 05 32 04 20 00 	mov    rax,QWORD PTR [rip+0x200432]        # 600830 <dtor_idx.6351>
  4003fe:	48 81 eb 50 06 60 00 	sub    rbx,0x600650
  400405:	48 c1 fb 03          	sar    rbx,0x3
  400409:	48 83 eb 01          	sub    rbx,0x1
  40040d:	48 39 d8             	cmp    rax,rbx
  400410:	73 24                	jae    400436 <__do_global_dtors_aux+0x56>
  400412:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  400418:	48 83 c0 01          	add    rax,0x1
  40041c:	48 89 05 0d 04 20 00 	mov    QWORD PTR [rip+0x20040d],rax        # 600830 <dtor_idx.6351>
  400423:	ff 14 c5 50 06 60 00 	call   QWORD PTR [rax*8+0x600650]
  40042a:	48 8b 05 ff 03 20 00 	mov    rax,QWORD PTR [rip+0x2003ff]        # 600830 <dtor_idx.6351>
  400431:	48 39 d8             	cmp    rax,rbx
  400434:	72 e2                	jb     400418 <__do_global_dtors_aux+0x38>
  400436:	c6 05 eb 03 20 00 01 	mov    BYTE PTR [rip+0x2003eb],0x1        # 600828 <completed.6349>
  40043d:	48 83 c4 08          	add    rsp,0x8
  400441:	5b                   	pop    rbx
  400442:	c9                   	leave  
  400443:	c3                   	ret    
  400444:	66 66 66 2e 0f 1f 84 	data32 data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40044b:	00 00 00 00 00 

0000000000400450 <frame_dummy>:
  400450:	48 83 3d 08 02 20 00 	cmp    QWORD PTR [rip+0x200208],0x0        # 600660 <__JCR_END__>
  400457:	00 
  400458:	55                   	push   rbp
  400459:	48 89 e5             	mov    rbp,rsp
  40045c:	74 12                	je     400470 <frame_dummy+0x20>
  40045e:	b8 00 00 00 00       	mov    eax,0x0
  400463:	48 85 c0             	test   rax,rax
  400466:	74 08                	je     400470 <frame_dummy+0x20>
  400468:	bf 60 06 60 00       	mov    edi,0x600660
  40046d:	c9                   	leave  
  40046e:	ff e0                	jmp    rax
  400470:	c9                   	leave  
  400471:	c3                   	ret    
  400472:	90                   	nop
  400473:	90                   	nop

0000000000400474 <main>:
  400474:	55                   	push   rbp
  400475:	48 89 e5             	mov    rbp,rsp
  400478:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  40047f:	c6 45 ff 3e          	mov    BYTE PTR [rbp-0x1],0x3e
  400483:	80 7d ff 74          	cmp    BYTE PTR [rbp-0x1],0x74
  400487:	74 0c                	je     400495 <main+0x21>
  400489:	80 7d ff 6f          	cmp    BYTE PTR [rbp-0x1],0x6f
  40048d:	74 06                	je     400495 <main+0x21>
  40048f:	80 7d ff 3e          	cmp    BYTE PTR [rbp-0x1],0x3e
  400493:	75 04                	jne    400499 <main+0x25>
  400495:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
  400499:	b8 00 00 00 00       	mov    eax,0x0
  40049e:	c9                   	leave  
  40049f:	c3                   	ret    

00000000004004a0 <__libc_csu_fini>:
  4004a0:	f3 c3                	repz ret 
  4004a2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nop WORD PTR cs:[rax+rax*1+0x0]
  4004a9:	1f 84 00 00 00 00 00 

00000000004004b0 <__libc_csu_init>:
  4004b0:	48 89 6c 24 d8       	mov    QWORD PTR [rsp-0x28],rbp
  4004b5:	4c 89 64 24 e0       	mov    QWORD PTR [rsp-0x20],r12
  4004ba:	48 8d 2d 7b 01 20 00 	lea    rbp,[rip+0x20017b]        # 60063c <__init_array_end>
  4004c1:	4c 8d 25 74 01 20 00 	lea    r12,[rip+0x200174]        # 60063c <__init_array_end>
  4004c8:	4c 89 6c 24 e8       	mov    QWORD PTR [rsp-0x18],r13
  4004cd:	4c 89 74 24 f0       	mov    QWORD PTR [rsp-0x10],r14
  4004d2:	4c 89 7c 24 f8       	mov    QWORD PTR [rsp-0x8],r15
  4004d7:	48 89 5c 24 d0       	mov    QWORD PTR [rsp-0x30],rbx
  4004dc:	48 83 ec 38          	sub    rsp,0x38
  4004e0:	4c 29 e5             	sub    rbp,r12
  4004e3:	41 89 fd             	mov    r13d,edi
  4004e6:	49 89 f6             	mov    r14,rsi
  4004e9:	48 c1 fd 03          	sar    rbp,0x3
  4004ed:	49 89 d7             	mov    r15,rdx
  4004f0:	e8 63 fe ff ff       	call   400358 <_init>
  4004f5:	48 85 ed             	test   rbp,rbp
  4004f8:	74 1c                	je     400516 <__libc_csu_init+0x66>
  4004fa:	31 db                	xor    ebx,ebx
  4004fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400500:	4c 89 fa             	mov    rdx,r15
  400503:	4c 89 f6             	mov    rsi,r14
  400506:	44 89 ef             	mov    edi,r13d
  400509:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40050d:	48 83 c3 01          	add    rbx,0x1
  400511:	48 39 eb             	cmp    rbx,rbp
  400514:	72 ea                	jb     400500 <__libc_csu_init+0x50>
  400516:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  40051b:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
  400520:	4c 8b 64 24 18       	mov    r12,QWORD PTR [rsp+0x18]
  400525:	4c 8b 6c 24 20       	mov    r13,QWORD PTR [rsp+0x20]
  40052a:	4c 8b 74 24 28       	mov    r14,QWORD PTR [rsp+0x28]
  40052f:	4c 8b 7c 24 30       	mov    r15,QWORD PTR [rsp+0x30]
  400534:	48 83 c4 38          	add    rsp,0x38
  400538:	c3                   	ret    
  400539:	90                   	nop
  40053a:	90                   	nop
  40053b:	90                   	nop
  40053c:	90                   	nop
  40053d:	90                   	nop
  40053e:	90                   	nop
  40053f:	90                   	nop

0000000000400540 <__do_global_ctors_aux>:
  400540:	55                   	push   rbp
  400541:	48 89 e5             	mov    rbp,rsp
  400544:	53                   	push   rbx
  400545:	48 83 ec 08          	sub    rsp,0x8
  400549:	48 8b 05 f0 00 20 00 	mov    rax,QWORD PTR [rip+0x2000f0]        # 600640 <__CTOR_LIST__>
  400550:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
  400554:	74 19                	je     40056f <__do_global_ctors_aux+0x2f>
  400556:	bb 40 06 60 00       	mov    ebx,0x600640
  40055b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400560:	48 83 eb 08          	sub    rbx,0x8
  400564:	ff d0                	call   rax
  400566:	48 8b 03             	mov    rax,QWORD PTR [rbx]
  400569:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
  40056d:	75 f1                	jne    400560 <__do_global_ctors_aux+0x20>
  40056f:	48 83 c4 08          	add    rsp,0x8
  400573:	5b                   	pop    rbx
  400574:	c9                   	leave  
  400575:	c3                   	ret    
  400576:	90                   	nop
  400577:	90                   	nop

Disassembly of section .fini:

0000000000400578 <_fini>:
  400578:	48 83 ec 08          	sub    rsp,0x8
  40057c:	e8 5f fe ff ff       	call   4003e0 <__do_global_dtors_aux>
  400581:	48 83 c4 08          	add    rsp,0x8
  400585:	c3                   	ret    

Disassembly of section .rodata:

0000000000400588 <_IO_stdin_used>:
  400588:	01 00                	add    DWORD PTR [rax],eax
  40058a:	02 00                	add    al,BYTE PTR [rax]
  40058c:	00 00                	add    BYTE PTR [rax],al
	...

0000000000400590 <__dso_handle>:
	...

Disassembly of section .eh_frame_hdr:

0000000000400598 <.eh_frame_hdr>:
  400598:	01 1b                	add    DWORD PTR [rbx],ebx
  40059a:	03 3b                	add    edi,DWORD PTR [rbx]
  40059c:	24 00                	and    al,0x0
  40059e:	00 00                	add    BYTE PTR [rax],al
  4005a0:	03 00                	add    eax,DWORD PTR [rax]
  4005a2:	00 00                	add    BYTE PTR [rax],al
  4005a4:	dc fe                	fdivr  st(6),st
  4005a6:	ff                   	(bad)  
  4005a7:	ff 40 00             	inc    DWORD PTR [rax+0x0]
  4005aa:	00 00                	add    BYTE PTR [rax],al
  4005ac:	08 ff                	or     bh,bh
  4005ae:	ff                   	(bad)  
  4005af:	ff 60 00             	jmp    QWORD PTR [rax+0x0]
  4005b2:	00 00                	add    BYTE PTR [rax],al
  4005b4:	18 ff                	sbb    bh,bh
  4005b6:	ff                   	(bad)  
  4005b7:	ff                   	(bad)  
  4005b8:	78 00                	js     4005ba <__dso_handle+0x2a>
	...

Disassembly of section .eh_frame:

00000000004005c0 <__FRAME_END__-0x78>:
  4005c0:	14 00                	adc    al,0x0
  4005c2:	00 00                	add    BYTE PTR [rax],al
  4005c4:	00 00                	add    BYTE PTR [rax],al
  4005c6:	00 00                	add    BYTE PTR [rax],al
  4005c8:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
  4005cb:	00 01                	add    BYTE PTR [rcx],al
  4005cd:	78 10                	js     4005df <__dso_handle+0x4f>
  4005cf:	01 1b                	add    DWORD PTR [rbx],ebx
  4005d1:	0c 07                	or     al,0x7
  4005d3:	08 90 01 00 00 1c    	or     BYTE PTR [rax+0x1c000001],dl
  4005d9:	00 00                	add    BYTE PTR [rax],al
  4005db:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  4005de:	00 00                	add    BYTE PTR [rax],al
  4005e0:	94                   	xchg   esp,eax
  4005e1:	fe                   	(bad)  
  4005e2:	ff                   	(bad)  
  4005e3:	ff 2c 00             	jmp    FWORD PTR [rax+rax*1]
  4005e6:	00 00                	add    BYTE PTR [rax],al
  4005e8:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  4005eb:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  4005f1:	67 0c 07             	addr32 or al,0x7
  4005f4:	08 00                	or     BYTE PTR [rax],al
  4005f6:	00 00                	add    BYTE PTR [rax],al
  4005f8:	14 00                	adc    al,0x0
  4005fa:	00 00                	add    BYTE PTR [rax],al
  4005fc:	3c 00                	cmp    al,0x0
  4005fe:	00 00                	add    BYTE PTR [rax],al
  400600:	a0 fe ff ff 02 00 00 	mov    al,ds:0x2fffffe
  400607:	00 00 
  400609:	00 00                	add    BYTE PTR [rax],al
  40060b:	00 00                	add    BYTE PTR [rax],al
  40060d:	00 00                	add    BYTE PTR [rax],al
  40060f:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
  400612:	00 00                	add    BYTE PTR [rax],al
  400614:	54                   	push   rsp
  400615:	00 00                	add    BYTE PTR [rax],al
  400617:	00 98 fe ff ff 89    	add    BYTE PTR [rax-0x76000002],bl
  40061d:	00 00                	add    BYTE PTR [rax],al
  40061f:	00 00                	add    BYTE PTR [rax],al
  400621:	51                   	push   rcx
  400622:	8c 05 86 06 5f 0e    	mov    WORD PTR [rip+0xe5f0686],es        # e9f0cae <_end+0xe3f0476>
  400628:	40 83 07 8f          	rex add DWORD PTR [rdi],0xffffffffffffff8f
  40062c:	02 8e 03 8d 04 02    	add    cl,BYTE PTR [rsi+0x2048d03]
  400632:	58                   	pop    rax
  400633:	0e                   	(bad)  
  400634:	08 00                	or     BYTE PTR [rax],al
	...

0000000000400638 <__FRAME_END__>:
  400638:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .ctors:

0000000000600640 <__CTOR_LIST__>:
  600640:	ff                   	(bad)  
  600641:	ff                   	(bad)  
  600642:	ff                   	(bad)  
  600643:	ff                   	(bad)  
  600644:	ff                   	(bad)  
  600645:	ff                   	(bad)  
  600646:	ff                   	(bad)  
  600647:	ff 00                	inc    DWORD PTR [rax]

0000000000600648 <__CTOR_END__>:
	...

Disassembly of section .dtors:

0000000000600650 <__DTOR_LIST__>:
  600650:	ff                   	(bad)  
  600651:	ff                   	(bad)  
  600652:	ff                   	(bad)  
  600653:	ff                   	(bad)  
  600654:	ff                   	(bad)  
  600655:	ff                   	(bad)  
  600656:	ff                   	(bad)  
  600657:	ff 00                	inc    DWORD PTR [rax]

0000000000600658 <__DTOR_END__>:
	...

Disassembly of section .jcr:

0000000000600660 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000600668 <_DYNAMIC>:
  600668:	01 00                	add    DWORD PTR [rax],eax
  60066a:	00 00                	add    BYTE PTR [rax],al
  60066c:	00 00                	add    BYTE PTR [rax],al
  60066e:	00 00                	add    BYTE PTR [rax],al
  600670:	10 00                	adc    BYTE PTR [rax],al
  600672:	00 00                	add    BYTE PTR [rax],al
  600674:	00 00                	add    BYTE PTR [rax],al
  600676:	00 00                	add    BYTE PTR [rax],al
  600678:	0c 00                	or     al,0x0
  60067a:	00 00                	add    BYTE PTR [rax],al
  60067c:	00 00                	add    BYTE PTR [rax],al
  60067e:	00 00                	add    BYTE PTR [rax],al
  600680:	58                   	pop    rax
  600681:	03 40 00             	add    eax,DWORD PTR [rax+0x0]
  600684:	00 00                	add    BYTE PTR [rax],al
  600686:	00 00                	add    BYTE PTR [rax],al
  600688:	0d 00 00 00 00       	or     eax,0x0
  60068d:	00 00                	add    BYTE PTR [rax],al
  60068f:	00 78 05             	add    BYTE PTR [rax+0x5],bh
  600692:	40 00 00             	add    BYTE PTR [rax],al
  600695:	00 00                	add    BYTE PTR [rax],al
  600697:	00 f5                	add    ch,dh
  600699:	fe                   	(bad)  
  60069a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  60069d:	00 00                	add    BYTE PTR [rax],al
  60069f:	00 60 02             	add    BYTE PTR [rax+0x2],ah
  6006a2:	40 00 00             	add    BYTE PTR [rax],al
  6006a5:	00 00                	add    BYTE PTR [rax],al
  6006a7:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 6006ad <_DYNAMIC+0x45>
  6006ad:	00 00                	add    BYTE PTR [rax],al
  6006af:	00 c8                	add    al,cl
  6006b1:	02 40 00             	add    al,BYTE PTR [rax+0x0]
  6006b4:	00 00                	add    BYTE PTR [rax],al
  6006b6:	00 00                	add    BYTE PTR [rax],al
  6006b8:	06                   	(bad)  
  6006b9:	00 00                	add    BYTE PTR [rax],al
  6006bb:	00 00                	add    BYTE PTR [rax],al
  6006bd:	00 00                	add    BYTE PTR [rax],al
  6006bf:	00 80 02 40 00 00    	add    BYTE PTR [rax+0x4002],al
  6006c5:	00 00                	add    BYTE PTR [rax],al
  6006c7:	00 0a                	add    BYTE PTR [rdx],cl
  6006c9:	00 00                	add    BYTE PTR [rax],al
  6006cb:	00 00                	add    BYTE PTR [rax],al
  6006cd:	00 00                	add    BYTE PTR [rax],al
  6006cf:	00 38                	add    BYTE PTR [rax],bh
  6006d1:	00 00                	add    BYTE PTR [rax],al
  6006d3:	00 00                	add    BYTE PTR [rax],al
  6006d5:	00 00                	add    BYTE PTR [rax],al
  6006d7:	00 0b                	add    BYTE PTR [rbx],cl
  6006d9:	00 00                	add    BYTE PTR [rax],al
  6006db:	00 00                	add    BYTE PTR [rax],al
  6006dd:	00 00                	add    BYTE PTR [rax],al
  6006df:	00 18                	add    BYTE PTR [rax],bl
  6006e1:	00 00                	add    BYTE PTR [rax],al
  6006e3:	00 00                	add    BYTE PTR [rax],al
  6006e5:	00 00                	add    BYTE PTR [rax],al
  6006e7:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 6006ed <_DYNAMIC+0x85>
	...
  6006f5:	00 00                	add    BYTE PTR [rax],al
  6006f7:	00 03                	add    BYTE PTR [rbx],al
	...
  600701:	08 60 00             	or     BYTE PTR [rax+0x0],ah
  600704:	00 00                	add    BYTE PTR [rax],al
  600706:	00 00                	add    BYTE PTR [rax],al
  600708:	02 00                	add    al,BYTE PTR [rax]
  60070a:	00 00                	add    BYTE PTR [rax],al
  60070c:	00 00                	add    BYTE PTR [rax],al
  60070e:	00 00                	add    BYTE PTR [rax],al
  600710:	18 00                	sbb    BYTE PTR [rax],al
  600712:	00 00                	add    BYTE PTR [rax],al
  600714:	00 00                	add    BYTE PTR [rax],al
  600716:	00 00                	add    BYTE PTR [rax],al
  600718:	14 00                	adc    al,0x0
  60071a:	00 00                	add    BYTE PTR [rax],al
  60071c:	00 00                	add    BYTE PTR [rax],al
  60071e:	00 00                	add    BYTE PTR [rax],al
  600720:	07                   	(bad)  
  600721:	00 00                	add    BYTE PTR [rax],al
  600723:	00 00                	add    BYTE PTR [rax],al
  600725:	00 00                	add    BYTE PTR [rax],al
  600727:	00 17                	add    BYTE PTR [rdi],dl
  600729:	00 00                	add    BYTE PTR [rax],al
  60072b:	00 00                	add    BYTE PTR [rax],al
  60072d:	00 00                	add    BYTE PTR [rax],al
  60072f:	00 40 03             	add    BYTE PTR [rax+0x3],al
  600732:	40 00 00             	add    BYTE PTR [rax],al
  600735:	00 00                	add    BYTE PTR [rax],al
  600737:	00 07                	add    BYTE PTR [rdi],al
  600739:	00 00                	add    BYTE PTR [rax],al
  60073b:	00 00                	add    BYTE PTR [rax],al
  60073d:	00 00                	add    BYTE PTR [rax],al
  60073f:	00 28                	add    BYTE PTR [rax],ch
  600741:	03 40 00             	add    eax,DWORD PTR [rax+0x0]
  600744:	00 00                	add    BYTE PTR [rax],al
  600746:	00 00                	add    BYTE PTR [rax],al
  600748:	08 00                	or     BYTE PTR [rax],al
  60074a:	00 00                	add    BYTE PTR [rax],al
  60074c:	00 00                	add    BYTE PTR [rax],al
  60074e:	00 00                	add    BYTE PTR [rax],al
  600750:	18 00                	sbb    BYTE PTR [rax],al
  600752:	00 00                	add    BYTE PTR [rax],al
  600754:	00 00                	add    BYTE PTR [rax],al
  600756:	00 00                	add    BYTE PTR [rax],al
  600758:	09 00                	or     DWORD PTR [rax],eax
  60075a:	00 00                	add    BYTE PTR [rax],al
  60075c:	00 00                	add    BYTE PTR [rax],al
  60075e:	00 00                	add    BYTE PTR [rax],al
  600760:	18 00                	sbb    BYTE PTR [rax],al
  600762:	00 00                	add    BYTE PTR [rax],al
  600764:	00 00                	add    BYTE PTR [rax],al
  600766:	00 00                	add    BYTE PTR [rax],al
  600768:	fe                   	(bad)  
  600769:	ff                   	(bad)  
  60076a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  60076d:	00 00                	add    BYTE PTR [rax],al
  60076f:	00 08                	add    BYTE PTR [rax],cl
  600771:	03 40 00             	add    eax,DWORD PTR [rax+0x0]
  600774:	00 00                	add    BYTE PTR [rax],al
  600776:	00 00                	add    BYTE PTR [rax],al
  600778:	ff                   	(bad)  
  600779:	ff                   	(bad)  
  60077a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  60077d:	00 00                	add    BYTE PTR [rax],al
  60077f:	00 01                	add    BYTE PTR [rcx],al
  600781:	00 00                	add    BYTE PTR [rax],al
  600783:	00 00                	add    BYTE PTR [rax],al
  600785:	00 00                	add    BYTE PTR [rax],al
  600787:	00 f0                	add    al,dh
  600789:	ff                   	(bad)  
  60078a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  60078d:	00 00                	add    BYTE PTR [rax],al
  60078f:	00 00                	add    BYTE PTR [rax],al
  600791:	03 40 00             	add    eax,DWORD PTR [rax+0x0]
	...

Disassembly of section .got:

00000000006007f8 <.got>:
	...

Disassembly of section .got.plt:

0000000000600800 <_GLOBAL_OFFSET_TABLE_>:
  600800:	68 06 60 00 00       	push   0x6006
	...
  600815:	00 00                	add    BYTE PTR [rax],al
  600817:	00 86 03 40 00 00    	add    BYTE PTR [rsi+0x4003],al
  60081d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .data:

0000000000600820 <__data_start>:
  600820:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .bss:

0000000000600828 <completed.6349>:
	...

0000000000600830 <dtor_idx.6351>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 47 4e             	sub    BYTE PTR [rdi+0x4e],al
   8:	55                   	push   rbp
   9:	29 20                	sub    DWORD PTR [rax],esp
   b:	34 2e                	xor    al,0x2e
   d:	34 2e                	xor    al,0x2e
   f:	37                   	(bad)  
  10:	20 32                	and    BYTE PTR [rdx],dh
  12:	30 31                	xor    BYTE PTR [rcx],dh
  14:	32 30                	xor    dh,BYTE PTR [rax]
  16:	33 31                	xor    esi,DWORD PTR [rcx]
  18:	33 20                	xor    esp,DWORD PTR [rax]
  1a:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
  1d:	64 20 48 61          	and    BYTE PTR fs:[rax+0x61],cl
  21:	74 20                	je     43 <_init-0x400315>
  23:	34 2e                	xor    al,0x2e
  25:	34 2e                	xor    al,0x2e
  27:	37                   	(bad)  
  28:	2d                   	.byte 0x2d
  29:	34 29                	xor    al,0x29
	...
