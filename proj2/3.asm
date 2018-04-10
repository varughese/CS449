
mav120_3:     file format elf32-i386


Disassembly of section .interp:

08048134 <.interp>:
 8048134:	2f                   	das
 8048135:	6c                   	insb   (%dx),%es:(%edi)
 8048136:	69 62 2f 6c 64 2d 6c 	imul   $0x6c2d646c,0x2f(%edx),%esp
 804813d:	69 6e 75 78 2e 73 6f 	imul   $0x6f732e78,0x75(%esi),%ebp
 8048144:	2e 32 00             	xor    %cs:(%eax),%al

Disassembly of section .note.ABI-tag:

08048148 <.note.ABI-tag>:
 8048148:	04 00                	add    $0x0,%al
 804814a:	00 00                	add    %al,(%eax)
 804814c:	10 00                	adc    %al,(%eax)
 804814e:	00 00                	add    %al,(%eax)
 8048150:	01 00                	add    %eax,(%eax)
 8048152:	00 00                	add    %al,(%eax)
 8048154:	47                   	inc    %edi
 8048155:	4e                   	dec    %esi
 8048156:	55                   	push   %ebp
 8048157:	00 00                	add    %al,(%eax)
 8048159:	00 00                	add    %al,(%eax)
 804815b:	00 02                	add    %al,(%edx)
 804815d:	00 00                	add    %al,(%eax)
 804815f:	00 06                	add    %al,(%esi)
 8048161:	00 00                	add    %al,(%eax)
 8048163:	00 12                	add    %dl,(%edx)
 8048165:	00 00                	add    %al,(%eax)
	...

Disassembly of section .note.gnu.build-id:

08048168 <.note.gnu.build-id>:
 8048168:	04 00                	add    $0x0,%al
 804816a:	00 00                	add    %al,(%eax)
 804816c:	14 00                	adc    $0x0,%al
 804816e:	00 00                	add    %al,(%eax)
 8048170:	03 00                	add    (%eax),%eax
 8048172:	00 00                	add    %al,(%eax)
 8048174:	47                   	inc    %edi
 8048175:	4e                   	dec    %esi
 8048176:	55                   	push   %ebp
 8048177:	00 93 7a 54 1d 29    	add    %dl,0x291d547a(%ebx)
 804817d:	0a 4d c4             	or     -0x3c(%ebp),%cl
 8048180:	b5 00                	mov    $0x0,%ch
 8048182:	ff 18                	lcall  *(%eax)
 8048184:	19 da                	sbb    %ebx,%edx
 8048186:	cb                   	lret
 8048187:	0f d7                	(bad)
 8048189:	46                   	inc    %esi
 804818a:	5e                   	pop    %esi
 804818b:	cc                   	int3

Disassembly of section .gnu.hash:

0804818c <.gnu.hash>:
 804818c:	02 00                	add    (%eax),%al
 804818e:	00 00                	add    %al,(%eax)
 8048190:	06                   	push   %es
 8048191:	00 00                	add    %al,(%eax)
 8048193:	00 01                	add    %al,(%ecx)
 8048195:	00 00                	add    %al,(%eax)
 8048197:	00 05 00 00 00 00    	add    %al,0x0
 804819d:	20 00                	and    %al,(%eax)
 804819f:	20 00                	and    %al,(%eax)
 80481a1:	00 00                	add    %al,(%eax)
 80481a3:	00 06                	add    %al,(%esi)
 80481a5:	00 00                	add    %al,(%eax)
 80481a7:	00                   	.byte 0x0
 80481a8:	ad                   	lods   %ds:(%esi),%eax
 80481a9:	4b                   	dec    %ebx
 80481aa:	e3 c0                	jecxz  804816c <getchar@plt-0x1a8>

Disassembly of section .dynsym:

080481ac <.dynsym>:
	...
 80481bc:	35 00 00 00 00       	xor    $0x0,%eax
 80481c1:	00 00                	add    %al,(%eax)
 80481c3:	00 00                	add    %al,(%eax)
 80481c5:	00 00                	add    %al,(%eax)
 80481c7:	00 12                	add    %dl,(%edx)
 80481c9:	00 00                	add    %al,(%eax)
 80481cb:	00 01                	add    %al,(%ecx)
	...
 80481d5:	00 00                	add    %al,(%eax)
 80481d7:	00 20                	add    %ah,(%eax)
 80481d9:	00 00                	add    %al,(%eax)
 80481db:	00 3d 00 00 00 00    	add    %bh,0x0
 80481e1:	00 00                	add    %al,(%eax)
 80481e3:	00 00                	add    %al,(%eax)
 80481e5:	00 00                	add    %al,(%eax)
 80481e7:	00 12                	add    %dl,(%edx)
 80481e9:	00 00                	add    %al,(%eax)
 80481eb:	00 2e                	add    %ch,(%esi)
	...
 80481f5:	00 00                	add    %al,(%eax)
 80481f7:	00 12                	add    %dl,(%edx)
 80481f9:	00 00                	add    %al,(%eax)
 80481fb:	00 29                	add    %ch,(%ecx)
	...
 8048205:	00 00                	add    %al,(%eax)
 8048207:	00 12                	add    %dl,(%edx)
 8048209:	00 00                	add    %al,(%eax)
 804820b:	00 1a                	add    %bl,(%edx)
 804820d:	00 00                	add    %al,(%eax)
 804820f:	00 cc                	add    %cl,%ah
 8048211:	85 04 08             	test   %eax,(%eax,%ecx,1)
 8048214:	04 00                	add    $0x0,%al
 8048216:	00 00                	add    %al,(%eax)
 8048218:	11 00                	adc    %eax,(%eax)
 804821a:	0f                   	.byte 0xf
	...

Disassembly of section .dynstr:

0804821c <.dynstr>:
 804821c:	00 5f 5f             	add    %bl,0x5f(%edi)
 804821f:	67 6d                	insl   (%dx),%es:(%di)
 8048221:	6f                   	outsl  %ds:(%esi),(%dx)
 8048222:	6e                   	outsb  %ds:(%esi),(%dx)
 8048223:	5f                   	pop    %edi
 8048224:	73 74                	jae    804829a <getchar@plt-0x7a>
 8048226:	61                   	popa
 8048227:	72 74                	jb     804829d <getchar@plt-0x77>
 8048229:	5f                   	pop    %edi
 804822a:	5f                   	pop    %edi
 804822b:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
 804822f:	63 2e                	arpl   %bp,(%esi)
 8048231:	73 6f                	jae    80482a2 <getchar@plt-0x72>
 8048233:	2e 36 00 5f 49       	cs add %bl,%cs:%ss:0x49(%edi)
 8048238:	4f                   	dec    %edi
 8048239:	5f                   	pop    %edi
 804823a:	73 74                	jae    80482b0 <getchar@plt-0x64>
 804823c:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%esi),%ebp
 8048243:	64
 8048244:	00 70 75             	add    %dh,0x75(%eax)
 8048247:	74 73                	je     80482bc <getchar@plt-0x58>
 8048249:	00 70 72             	add    %dh,0x72(%eax)
 804824c:	69 6e 74 66 00 67 65 	imul   $0x65670066,0x74(%esi),%ebp
 8048253:	74 63                	je     80482b8 <getchar@plt-0x5c>
 8048255:	68 61 72 00 5f       	push   $0x5f007261
 804825a:	5f                   	pop    %edi
 804825b:	6c                   	insb   (%dx),%es:(%edi)
 804825c:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%edx),%esp
 8048263:	72 74                	jb     80482d9 <getchar@plt-0x3b>
 8048265:	5f                   	pop    %edi
 8048266:	6d                   	insl   (%dx),%es:(%edi)
 8048267:	61                   	popa
 8048268:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%esi),%ebp
 804826f:	43                   	inc    %ebx
 8048270:	5f                   	pop    %edi
 8048271:	32 2e                	xor    (%esi),%ch
 8048273:	30 00                	xor    %al,(%eax)

Disassembly of section .gnu.version:

08048276 <.gnu.version>:
 8048276:	00 00                	add    %al,(%eax)
 8048278:	02 00                	add    (%eax),%al
 804827a:	00 00                	add    %al,(%eax)
 804827c:	02 00                	add    (%eax),%al
 804827e:	02 00                	add    (%eax),%al
 8048280:	02 00                	add    (%eax),%al
 8048282:	01 00                	add    %eax,(%eax)

Disassembly of section .gnu.version_r:

08048284 <.gnu.version_r>:
 8048284:	01 00                	add    %eax,(%eax)
 8048286:	01 00                	add    %eax,(%eax)
 8048288:	10 00                	adc    %al,(%eax)
 804828a:	00 00                	add    %al,(%eax)
 804828c:	10 00                	adc    %al,(%eax)
 804828e:	00 00                	add    %al,(%eax)
 8048290:	00 00                	add    %al,(%eax)
 8048292:	00 00                	add    %al,(%eax)
 8048294:	10 69 69             	adc    %ch,0x69(%ecx)
 8048297:	0d 00 00 02 00       	or     $0x20000,%eax
 804829c:	4f                   	dec    %edi
 804829d:	00 00                	add    %al,(%eax)
 804829f:	00 00                	add    %al,(%eax)
 80482a1:	00 00                	add    %al,(%eax)
	...

Disassembly of section .rel.dyn:

080482a4 <.rel.dyn>:
 80482a4:	a0 97 04 08 06       	mov    0x6080497,%al
 80482a9:	02 00                	add    (%eax),%al
	...

Disassembly of section .rel.plt:

080482ac <.rel.plt>:
 80482ac:	b0 97                	mov    $0x97,%al
 80482ae:	04 08                	add    $0x8,%al
 80482b0:	07                   	pop    %es
 80482b1:	01 00                	add    %eax,(%eax)
 80482b3:	00 b4 97 04 08 07 02 	add    %dh,0x2070804(%edi,%edx,4)
 80482ba:	00 00                	add    %al,(%eax)
 80482bc:	b8 97 04 08 07       	mov    $0x7080497,%eax
 80482c1:	03 00                	add    (%eax),%eax
 80482c3:	00 bc 97 04 08 07 04 	add    %bh,0x4070804(%edi,%edx,4)
 80482ca:	00 00                	add    %al,(%eax)
 80482cc:	c0 97 04 08 07 05 00 	rclb   $0x0,0x5070804(%edi)
	...

Disassembly of section .init:

080482d4 <.init>:
 80482d4:	55                   	push   %ebp
 80482d5:	89 e5                	mov    %esp,%ebp
 80482d7:	53                   	push   %ebx
 80482d8:	83 ec 04             	sub    $0x4,%esp
 80482db:	e8 00 00 00 00       	call   80482e0 <getchar@plt-0x34>
 80482e0:	5b                   	pop    %ebx
 80482e1:	81 c3 c4 14 00 00    	add    $0x14c4,%ebx
 80482e7:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 80482ed:	85 d2                	test   %edx,%edx
 80482ef:	74 05                	je     80482f6 <getchar@plt-0x1e>
 80482f1:	e8 2e 00 00 00       	call   8048324 <__gmon_start__@plt>
 80482f6:	e8 05 01 00 00       	call   8048400 <puts@plt+0xac>
 80482fb:	e8 80 02 00 00       	call   8048580 <puts@plt+0x22c>
 8048300:	58                   	pop    %eax
 8048301:	5b                   	pop    %ebx
 8048302:	c9                   	leave
 8048303:	c3                   	ret

Disassembly of section .plt:

08048304 <getchar@plt-0x10>:
 8048304:	ff 35 a8 97 04 08    	pushl  0x80497a8
 804830a:	ff 25 ac 97 04 08    	jmp    *0x80497ac
 8048310:	00 00                	add    %al,(%eax)
	...

08048314 <getchar@plt>:
 8048314:	ff 25 b0 97 04 08    	jmp    *0x80497b0
 804831a:	68 00 00 00 00       	push   $0x0
 804831f:	e9 e0 ff ff ff       	jmp    8048304 <getchar@plt-0x10>

08048324 <__gmon_start__@plt>:
 8048324:	ff 25 b4 97 04 08    	jmp    *0x80497b4
 804832a:	68 08 00 00 00       	push   $0x8
 804832f:	e9 d0 ff ff ff       	jmp    8048304 <getchar@plt-0x10>

08048334 <__libc_start_main@plt>:
 8048334:	ff 25 b8 97 04 08    	jmp    *0x80497b8
 804833a:	68 10 00 00 00       	push   $0x10
 804833f:	e9 c0 ff ff ff       	jmp    8048304 <getchar@plt-0x10>

08048344 <printf@plt>:
 8048344:	ff 25 bc 97 04 08    	jmp    *0x80497bc
 804834a:	68 18 00 00 00       	push   $0x18
 804834f:	e9 b0 ff ff ff       	jmp    8048304 <getchar@plt-0x10>

08048354 <puts@plt>:
 8048354:	ff 25 c0 97 04 08    	jmp    *0x80497c0
 804835a:	68 20 00 00 00       	push   $0x20
 804835f:	e9 a0 ff ff ff       	jmp    8048304 <getchar@plt-0x10>

Disassembly of section .text:

08048370 <.text>:
 8048370:	31 ed                	xor    %ebp,%ebp
 8048372:	5e                   	pop    %esi
 8048373:	89 e1                	mov    %esp,%ecx
 8048375:	83 e4 f0             	and    $0xfffffff0,%esp
 8048378:	50                   	push   %eax
 8048379:	54                   	push   %esp
 804837a:	52                   	push   %edx
 804837b:	68 10 85 04 08       	push   $0x8048510
 8048380:	68 20 85 04 08       	push   $0x8048520
 8048385:	51                   	push   %ecx
 8048386:	56                   	push   %esi
 8048387:	68 f3 84 04 08       	push   $0x80484f3
 804838c:	e8 a3 ff ff ff       	call   8048334 <__libc_start_main@plt>
 8048391:	f4                   	hlt
 8048392:	90                   	nop
 8048393:	90                   	nop
 8048394:	90                   	nop
 8048395:	90                   	nop
 8048396:	90                   	nop
 8048397:	90                   	nop
 8048398:	90                   	nop
 8048399:	90                   	nop
 804839a:	90                   	nop
 804839b:	90                   	nop
 804839c:	90                   	nop
 804839d:	90                   	nop
 804839e:	90                   	nop
 804839f:	90                   	nop
 80483a0:	55                   	push   %ebp
 80483a1:	89 e5                	mov    %esp,%ebp
 80483a3:	53                   	push   %ebx
 80483a4:	83 ec 04             	sub    $0x4,%esp
 80483a7:	80 3d c8 97 04 08 00 	cmpb   $0x0,0x80497c8
 80483ae:	75 3f                	jne    80483ef <puts@plt+0x9b>
 80483b0:	a1 cc 97 04 08       	mov    0x80497cc,%eax
 80483b5:	bb d0 96 04 08       	mov    $0x80496d0,%ebx
 80483ba:	81 eb cc 96 04 08    	sub    $0x80496cc,%ebx
 80483c0:	c1 fb 02             	sar    $0x2,%ebx
 80483c3:	83 eb 01             	sub    $0x1,%ebx
 80483c6:	39 d8                	cmp    %ebx,%eax
 80483c8:	73 1e                	jae    80483e8 <puts@plt+0x94>
 80483ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80483d0:	83 c0 01             	add    $0x1,%eax
 80483d3:	a3 cc 97 04 08       	mov    %eax,0x80497cc
 80483d8:	ff 14 85 cc 96 04 08 	call   *0x80496cc(,%eax,4)
 80483df:	a1 cc 97 04 08       	mov    0x80497cc,%eax
 80483e4:	39 d8                	cmp    %ebx,%eax
 80483e6:	72 e8                	jb     80483d0 <puts@plt+0x7c>
 80483e8:	c6 05 c8 97 04 08 01 	movb   $0x1,0x80497c8
 80483ef:	83 c4 04             	add    $0x4,%esp
 80483f2:	5b                   	pop    %ebx
 80483f3:	5d                   	pop    %ebp
 80483f4:	c3                   	ret
 80483f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80483f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048400:	55                   	push   %ebp
 8048401:	89 e5                	mov    %esp,%ebp
 8048403:	83 ec 18             	sub    $0x18,%esp
 8048406:	a1 d4 96 04 08       	mov    0x80496d4,%eax
 804840b:	85 c0                	test   %eax,%eax
 804840d:	74 12                	je     8048421 <puts@plt+0xcd>
 804840f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048414:	85 c0                	test   %eax,%eax
 8048416:	74 09                	je     8048421 <puts@plt+0xcd>
 8048418:	c7 04 24 d4 96 04 08 	movl   $0x80496d4,(%esp)
 804841f:	ff d0                	call   *%eax
 8048421:	c9                   	leave
 8048422:	c3                   	ret
 8048423:	90                   	nop
 8048424:	55                   	push   %ebp
 8048425:	89 e5                	mov    %esp,%ebp
 8048427:	53                   	push   %ebx
 8048428:	83 ec 34             	sub    $0x34,%esp
 804842b:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048432:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048439:	eb 10                	jmp    804844b <puts@plt+0xf7>
 804843b:	8b 5d f4             	mov    -0xc(%ebp),%ebx
 804843e:	e8 d1 fe ff ff       	call   8048314 <getchar@plt>
 8048443:	88 44 1d df          	mov    %al,-0x21(%ebp,%ebx,1)
 8048447:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804844b:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
 804844f:	7e ea                	jle    804843b <puts@plt+0xe7>
 8048451:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048454:	c6 44 05 df 00       	movb   $0x0,-0x21(%ebp,%eax,1)
 8048459:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 8048460:	eb 3c                	jmp    804849e <puts@plt+0x14a>
 8048462:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048465:	83 e8 01             	sub    $0x1,%eax
 8048468:	0f b6 44 05 df       	movzbl -0x21(%ebp,%eax,1),%eax
 804846d:	0f be c0             	movsbl %al,%eax
 # START OF COMPARISIONS
 8048470:	83 f8 3e             	cmp    $0x3e,%eax
 8048473:	74 20                	je     8048495 <puts@plt+0x141>
 8048475:	83 f8 3e             	cmp    $0x3e,%eax
 8048478:	7f 0c                	jg     8048486 <puts@plt+0x132>
 804847a:	83 f8 26             	cmp    $0x26,%eax
 804847d:	74 16                	je     8048495 <puts@plt+0x141>
 804847f:	83 f8 3c             	cmp    $0x3c,%eax
 8048482:	74 11                	je     8048495 <puts@plt+0x141>
 8048484:	eb 14                	jmp    804849a <puts@plt+0x146>
 8048486:	83 f8 7c             	cmp    $0x7c,%eax
 8048489:	74 0a                	je     8048495 <puts@plt+0x141>
 804848b:	83 f8 7e             	cmp    $0x7e,%eax
 804848e:	74 05                	je     8048495 <puts@plt+0x141>
 8048490:	83 f8 5e             	cmp    $0x5e,%eax
 8048493:	75 05                	jne    804849a <puts@plt+0x146>
 # ADD 1 to THE COUNTER
 8048495:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048499:	90                   	nop
 804849a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 # Why is it comparing this to the base.
 # oh its some sort of loop.
 804849e:	83 7d f4 10          	cmpl   $0x10,-0xc(%ebp)
 80484a2:	7e be                	jle    8048462 <puts@plt+0x10e>
 80484a4:	83 7d f0 09          	cmpl   $0x9,-0x10(%ebp)
 80484a8:	75 16                	jne    80484c0 <puts@plt+0x16c>
# this is the Congratulations text screen
 80484aa:	b8 d4 85 04 08       	mov    $0x80485d4,%eax
 80484af:	8d 55 df             	lea    -0x21(%ebp),%edx
 80484b2:	89 54 24 04          	mov    %edx,0x4(%esp)
 80484b6:	89 04 24             	mov    %eax,(%esp)
 80484b9:	e8 86 fe ff ff       	call   8048344 <printf@plt>
 80484be:	eb 0c                	jmp    80484cc <puts@plt+0x178>

# This is where "sorry incorrect gets called"

 80484c0:	c7 04 24 02 86 04 08 	movl   $0x8048602,(%esp)
 80484c7:	e8 88 fe ff ff       	call   8048354 <puts@plt>
 80484cc:	83 c4 34             	add    $0x34,%esp
 80484cf:	5b                   	pop    %ebx
 80484d0:	5d                   	pop    %ebp
 80484d1:	c3                   	ret
 80484d2:	55                   	push   %ebp
 80484d3:	89 e5                	mov    %esp,%ebp
 80484d5:	83 ec 08             	sub    $0x8,%esp
 80484d8:	e8 47 ff ff ff       	call   8048424 <puts@plt+0xd0>
 80484dd:	c9                   	leave
 80484de:	c3                   	ret
 80484df:	55                   	push   %ebp
 80484e0:	89 e5                	mov    %esp,%ebp
 80484e2:	83 ec 18             	sub    $0x18,%esp
 80484e5:	c7 45 f4 16 86 04 08 	movl   $0x8048616,-0xc(%ebp)
 80484ec:	e8 e1 ff ff ff       	call   80484d2 <puts@plt+0x17e>
 80484f1:	c9                   	leave
 80484f2:	c3                   	ret
 80484f3:	55                   	push   %ebp
 80484f4:	89 e5                	mov    %esp,%ebp
 80484f6:	83 e4 f0             	and    $0xfffffff0,%esp
 80484f9:	e8 e1 ff ff ff       	call   80484df <puts@plt+0x18b>
 80484fe:	89 ec                	mov    %ebp,%esp
 8048500:	5d                   	pop    %ebp
 8048501:	c3                   	ret
 8048502:	90                   	nop
 8048503:	90                   	nop
 8048504:	90                   	nop
 8048505:	90                   	nop
 8048506:	90                   	nop
 8048507:	90                   	nop
 8048508:	90                   	nop
 8048509:	90                   	nop
 804850a:	90                   	nop
 804850b:	90                   	nop
 804850c:	90                   	nop
 804850d:	90                   	nop
 804850e:	90                   	nop
 804850f:	90                   	nop
 8048510:	55                   	push   %ebp
 8048511:	89 e5                	mov    %esp,%ebp
 8048513:	5d                   	pop    %ebp
 8048514:	c3                   	ret
 8048515:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%eax,%eax,1)
 804851c:	00 00 00 00
 8048520:	55                   	push   %ebp
 8048521:	89 e5                	mov    %esp,%ebp
 8048523:	57                   	push   %edi
 8048524:	56                   	push   %esi
 8048525:	53                   	push   %ebx
 8048526:	e8 4f 00 00 00       	call   804857a <puts@plt+0x226>
 804852b:	81 c3 79 12 00 00    	add    $0x1279,%ebx
 8048531:	83 ec 1c             	sub    $0x1c,%esp
 8048534:	e8 9b fd ff ff       	call   80482d4 <getchar@plt-0x40>
 8048539:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 804853f:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 8048545:	29 c7                	sub    %eax,%edi
 8048547:	c1 ff 02             	sar    $0x2,%edi
 804854a:	85 ff                	test   %edi,%edi
 804854c:	74 24                	je     8048572 <puts@plt+0x21e>
 804854e:	31 f6                	xor    %esi,%esi
 8048550:	8b 45 10             	mov    0x10(%ebp),%eax
 8048553:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048557:	8b 45 0c             	mov    0xc(%ebp),%eax
 804855a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804855e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048561:	89 04 24             	mov    %eax,(%esp)
 8048564:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 804856b:	83 c6 01             	add    $0x1,%esi
 804856e:	39 fe                	cmp    %edi,%esi
 8048570:	72 de                	jb     8048550 <puts@plt+0x1fc>
 8048572:	83 c4 1c             	add    $0x1c,%esp
 8048575:	5b                   	pop    %ebx
 8048576:	5e                   	pop    %esi
 8048577:	5f                   	pop    %edi
 8048578:	5d                   	pop    %ebp
 8048579:	c3                   	ret
 804857a:	8b 1c 24             	mov    (%esp),%ebx
 804857d:	c3                   	ret
 804857e:	90                   	nop
 804857f:	90                   	nop
 8048580:	55                   	push   %ebp
 8048581:	89 e5                	mov    %esp,%ebp
 8048583:	53                   	push   %ebx
 8048584:	83 ec 04             	sub    $0x4,%esp
 8048587:	a1 c4 96 04 08       	mov    0x80496c4,%eax
 804858c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804858f:	74 13                	je     80485a4 <puts@plt+0x250>
 8048591:	bb c4 96 04 08       	mov    $0x80496c4,%ebx
 8048596:	66 90                	xchg   %ax,%ax
 8048598:	83 eb 04             	sub    $0x4,%ebx
 804859b:	ff d0                	call   *%eax
 804859d:	8b 03                	mov    (%ebx),%eax
 804859f:	83 f8 ff             	cmp    $0xffffffff,%eax
 80485a2:	75 f4                	jne    8048598 <puts@plt+0x244>
 80485a4:	83 c4 04             	add    $0x4,%esp
 80485a7:	5b                   	pop    %ebx
 80485a8:	5d                   	pop    %ebp
 80485a9:	c3                   	ret
 80485aa:	90                   	nop
 80485ab:	90                   	nop

Disassembly of section .fini:

080485ac <.fini>:
 80485ac:	55                   	push   %ebp
 80485ad:	89 e5                	mov    %esp,%ebp
 80485af:	53                   	push   %ebx
 80485b0:	83 ec 04             	sub    $0x4,%esp
 80485b3:	e8 00 00 00 00       	call   80485b8 <puts@plt+0x264>
 80485b8:	5b                   	pop    %ebx
 80485b9:	81 c3 ec 11 00 00    	add    $0x11ec,%ebx
 80485bf:	e8 dc fd ff ff       	call   80483a0 <puts@plt+0x4c>
 80485c4:	59                   	pop    %ecx
 80485c5:	5b                   	pop    %ebx
 80485c6:	c9                   	leave
 80485c7:	c3                   	ret

Disassembly of section .rodata:

080485c8 <_IO_stdin_used-0x4>:
 80485c8:	03 00                	add    (%eax),%eax
	...

080485cc <_IO_stdin_used>:
 80485cc:	01 00                	add    %eax,(%eax)
 80485ce:	02 00                	add    (%eax),%al
 80485d0:	00 00                	add    %al,(%eax)
 80485d2:	00 00                	add    %al,(%eax)
 80485d4:	43                   	inc    %ebx
 80485d5:	6f                   	outsl  %ds:(%esi),(%dx)
 80485d6:	6e                   	outsb  %ds:(%esi),(%dx)
 80485d7:	67 72 61             	addr16 jb 804863b <_IO_stdin_used+0x6f>
 80485da:	74 75                	je     8048651 <_IO_stdin_used+0x85>
 80485dc:	6c                   	insb   (%dx),%es:(%edi)
 80485dd:	61                   	popa
 80485de:	74 69                	je     8048649 <_IO_stdin_used+0x7d>
 80485e0:	6f                   	outsl  %ds:(%esi),(%dx)
 80485e1:	6e                   	outsb  %ds:(%esi),(%dx)
 80485e2:	73 21                	jae    8048605 <_IO_stdin_used+0x39>
 80485e4:	0a 55 6e             	or     0x6e(%ebp),%dl
 80485e7:	6c                   	insb   (%dx),%es:(%edi)
 80485e8:	6f                   	outsl  %ds:(%esi),(%dx)
 80485e9:	63 6b 65             	arpl   %bp,0x65(%ebx)
 80485ec:	64 20 77 69          	and    %dh,%fs:0x69(%edi)
 80485f0:	74 68                	je     804865a <_IO_stdin_used+0x8e>
 80485f2:	20 70 61             	and    %dh,0x61(%eax)
 80485f5:	73 73                	jae    804866a <_IO_stdin_used+0x9e>
 80485f7:	70 68                	jo     8048661 <_IO_stdin_used+0x95>
 80485f9:	72 61                	jb     804865c <_IO_stdin_used+0x90>
 80485fb:	73 65                	jae    8048662 <_IO_stdin_used+0x96>
 80485fd:	20 25 73 0a 00 53    	and    %ah,0x53000a73
 8048603:	6f                   	outsl  %ds:(%esi),(%dx)
 8048604:	72 72                	jb     8048678 <_IO_stdin_used+0xac>
 8048606:	79 21                	jns    8048629 <_IO_stdin_used+0x5d>
 8048608:	20 4e 6f             	and    %cl,0x6f(%esi)
 804860b:	74 20                	je     804862d <_IO_stdin_used+0x61>
 804860d:	63 6f 72             	arpl   %bp,0x72(%edi)
 8048610:	72 65                	jb     8048677 <_IO_stdin_used+0xab>
 8048612:	63 74 21 00          	arpl   %si,0x0(%ecx,%eiz,1)
 8048616:	26 23 6b 21          	and    %es:0x21(%ebx),%ebp
 804861a:	2c 20                	sub    $0x20,%al
 804861c:	2d 78 7c 3f 00       	sub    $0x3f7c78,%eax

Disassembly of section .eh_frame_hdr:

08048624 <.eh_frame_hdr>:
 8048624:	01 1b                	add    %ebx,(%ebx)
 8048626:	03 3b                	add    (%ebx),%edi
 8048628:	20 00                	and    %al,(%eax)
 804862a:	00 00                	add    %al,(%eax)
 804862c:	03 00                	add    (%eax),%eax
 804862e:	00 00                	add    %al,(%eax)
 8048630:	ec                   	in     (%dx),%al
 8048631:	fe                   	(bad)
 8048632:	ff                   	(bad)
 8048633:	ff                   	(bad)
 8048634:	3c 00                	cmp    $0x0,%al
 8048636:	00 00                	add    %al,(%eax)
 8048638:	fc                   	cld
 8048639:	fe                   	(bad)
 804863a:	ff                   	(bad)
 804863b:	ff 5c 00 00          	lcall  *0x0(%eax,%eax,1)
 804863f:	00 56 ff             	add    %dl,-0x1(%esi)
 8048642:	ff                   	(bad)
 8048643:	ff                   	.byte 0xff
 8048644:	88 00                	mov    %al,(%eax)
	...

Disassembly of section .eh_frame:

08048648 <.eh_frame>:
 8048648:	14 00                	adc    $0x0,%al
 804864a:	00 00                	add    %al,(%eax)
 804864c:	00 00                	add    %al,(%eax)
 804864e:	00 00                	add    %al,(%eax)
 8048650:	01 7a 52             	add    %edi,0x52(%edx)
 8048653:	00 01                	add    %al,(%ecx)
 8048655:	7c 08                	jl     804865f <_IO_stdin_used+0x93>
 8048657:	01 1b                	add    %ebx,(%ebx)
 8048659:	0c 04                	or     $0x4,%al
 804865b:	04 88                	add    $0x88,%al
 804865d:	01 00                	add    %eax,(%eax)
 804865f:	00 1c 00             	add    %bl,(%eax,%eax,1)
 8048662:	00 00                	add    %al,(%eax)
 8048664:	1c 00                	sbb    $0x0,%al
 8048666:	00 00                	add    %al,(%eax)
 8048668:	a8 fe                	test   $0xfe,%al
 804866a:	ff                   	(bad)
 804866b:	ff 05 00 00 00 00    	incl   0x0
 8048671:	41                   	inc    %ecx
 8048672:	0e                   	push   %cs
 8048673:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8048679:	41                   	inc    %ecx
 804867a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 804867d:	04 00                	add    $0x0,%al
 804867f:	00 28                	add    %ch,(%eax)
 8048681:	00 00                	add    %al,(%eax)
 8048683:	00 3c 00             	add    %bh,(%eax,%eax,1)
 8048686:	00 00                	add    %al,(%eax)
 8048688:	98                   	cwtl
 8048689:	fe                   	(bad)
 804868a:	ff                   	(bad)
 804868b:	ff 5a 00             	lcall  *0x0(%edx)
 804868e:	00 00                	add    %al,(%eax)
 8048690:	00 41 0e             	add    %al,0xe(%ecx)
 8048693:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8048699:	43                   	inc    %ebx
 804869a:	83 05 86 04 87 03 02 	addl   $0x2,0x3870486
 80486a1:	50                   	push   %eax
 80486a2:	c3                   	ret
 80486a3:	41                   	inc    %ecx
 80486a4:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 80486a8:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 80486ab:	04 10                	add    $0x10,%al
 80486ad:	00 00                	add    %al,(%eax)
 80486af:	00 68 00             	add    %ch,0x0(%eax)
 80486b2:	00 00                	add    %al,(%eax)
 80486b4:	c6                   	(bad)
 80486b5:	fe                   	(bad)
 80486b6:	ff                   	(bad)
 80486b7:	ff 04 00             	incl   (%eax,%eax,1)
	...

Disassembly of section .ctors:

080496c4 <.ctors>:
 80496c4:	ff                   	(bad)
 80496c5:	ff                   	(bad)
 80496c6:	ff                   	(bad)
 80496c7:	ff 00                	incl   (%eax)
 80496c9:	00 00                	add    %al,(%eax)
	...

Disassembly of section .dtors:

080496cc <.dtors>:
 80496cc:	ff                   	(bad)
 80496cd:	ff                   	(bad)
 80496ce:	ff                   	(bad)
 80496cf:	ff 00                	incl   (%eax)
 80496d1:	00 00                	add    %al,(%eax)
	...

Disassembly of section .jcr:

080496d4 <.jcr>:
 80496d4:	00 00                	add    %al,(%eax)
	...

Disassembly of section .dynamic:

080496d8 <.dynamic>:
 80496d8:	01 00                	add    %eax,(%eax)
 80496da:	00 00                	add    %al,(%eax)
 80496dc:	10 00                	adc    %al,(%eax)
 80496de:	00 00                	add    %al,(%eax)
 80496e0:	0c 00                	or     $0x0,%al
 80496e2:	00 00                	add    %al,(%eax)
 80496e4:	d4 82                	aam    $0xffffff82
 80496e6:	04 08                	add    $0x8,%al
 80496e8:	0d 00 00 00 ac       	or     $0xac000000,%eax
 80496ed:	85 04 08             	test   %eax,(%eax,%ecx,1)
 80496f0:	f5                   	cmc
 80496f1:	fe                   	(bad)
 80496f2:	ff 6f 8c             	ljmp   *-0x74(%edi)
 80496f5:	81 04 08 05 00 00 00 	addl   $0x5,(%eax,%ecx,1)
 80496fc:	1c 82                	sbb    $0x82,%al
 80496fe:	04 08                	add    $0x8,%al
 8049700:	06                   	push   %es
 8049701:	00 00                	add    %al,(%eax)
 8049703:	00 ac 81 04 08 0a 00 	add    %ch,0xa0804(%ecx,%eax,4)
 804970a:	00 00                	add    %al,(%eax)
 804970c:	59                   	pop    %ecx
 804970d:	00 00                	add    %al,(%eax)
 804970f:	00 0b                	add    %cl,(%ebx)
 8049711:	00 00                	add    %al,(%eax)
 8049713:	00 10                	add    %dl,(%eax)
 8049715:	00 00                	add    %al,(%eax)
 8049717:	00 15 00 00 00 00    	add    %dl,0x0
 804971d:	00 00                	add    %al,(%eax)
 804971f:	00 03                	add    %al,(%ebx)
 8049721:	00 00                	add    %al,(%eax)
 8049723:	00 a4 97 04 08 02 00 	add    %ah,0x20804(%edi,%edx,4)
 804972a:	00 00                	add    %al,(%eax)
 804972c:	28 00                	sub    %al,(%eax)
 804972e:	00 00                	add    %al,(%eax)
 8049730:	14 00                	adc    $0x0,%al
 8049732:	00 00                	add    %al,(%eax)
 8049734:	11 00                	adc    %eax,(%eax)
 8049736:	00 00                	add    %al,(%eax)
 8049738:	17                   	pop    %ss
 8049739:	00 00                	add    %al,(%eax)
 804973b:	00 ac 82 04 08 11 00 	add    %ch,0x110804(%edx,%eax,4)
 8049742:	00 00                	add    %al,(%eax)
 8049744:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 8049745:	82                   	(bad)
 8049746:	04 08                	add    $0x8,%al
 8049748:	12 00                	adc    (%eax),%al
 804974a:	00 00                	add    %al,(%eax)
 804974c:	08 00                	or     %al,(%eax)
 804974e:	00 00                	add    %al,(%eax)
 8049750:	13 00                	adc    (%eax),%eax
 8049752:	00 00                	add    %al,(%eax)
 8049754:	08 00                	or     %al,(%eax)
 8049756:	00 00                	add    %al,(%eax)
 8049758:	fe                   	(bad)
 8049759:	ff                   	(bad)
 804975a:	ff 6f 84             	ljmp   *-0x7c(%edi)
 804975d:	82                   	(bad)
 804975e:	04 08                	add    $0x8,%al
 8049760:	ff                   	(bad)
 8049761:	ff                   	(bad)
 8049762:	ff 6f 01             	ljmp   *0x1(%edi)
 8049765:	00 00                	add    %al,(%eax)
 8049767:	00 f0                	add    %dh,%al
 8049769:	ff                   	(bad)
 804976a:	ff 6f 76             	ljmp   *0x76(%edi)
 804976d:	82                   	(bad)
 804976e:	04 08                	add    $0x8,%al
	...

Disassembly of section .got:

080497a0 <.got>:
 80497a0:	00 00                	add    %al,(%eax)
	...

Disassembly of section .got.plt:

080497a4 <.got.plt>:
 80497a4:	d8 96 04 08 00 00    	fcoms  0x804(%esi)
 80497aa:	00 00                	add    %al,(%eax)
 80497ac:	00 00                	add    %al,(%eax)
 80497ae:	00 00                	add    %al,(%eax)
 80497b0:	1a 83 04 08 2a 83    	sbb    -0x7cd5f7fc(%ebx),%al
 80497b6:	04 08                	add    $0x8,%al
 80497b8:	3a 83 04 08 4a 83    	cmp    -0x7cb5f7fc(%ebx),%al
 80497be:	04 08                	add    $0x8,%al
 80497c0:	5a                   	pop    %edx
 80497c1:	83                   	.byte 0x83
 80497c2:	04 08                	add    $0x8,%al

Disassembly of section .data:

080497c4 <.data>:
 80497c4:	00 00                	add    %al,(%eax)
	...

Disassembly of section .bss:

080497c8 <.bss>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 47 4e             	sub    %al,0x4e(%edi)
   8:	55                   	push   %ebp
   9:	29 20                	sub    %esp,(%eax)
   b:	34 2e                	xor    $0x2e,%al
   d:	34 2e                	xor    $0x2e,%al
   f:	37                   	aaa
  10:	20 32                	and    %dh,(%edx)
  12:	30 31                	xor    %dh,(%ecx)
  14:	32 30                	xor    (%eax),%dh
  16:	33 31                	xor    (%ecx),%esi
  18:	33 20                	xor    (%eax),%esp
  1a:	28 52 65             	sub    %dl,0x65(%edx)
  1d:	64 20 48 61          	and    %cl,%fs:0x61(%eax)
  21:	74 20                	je     43 <getchar@plt-0x80482d1>
  23:	34 2e                	xor    $0x2e,%al
  25:	34 2e                	xor    $0x2e,%al
  27:	37                   	aaa
  28:	2d                   	.byte 0x2d
  29:	34 29                	xor    $0x29,%al
	...
