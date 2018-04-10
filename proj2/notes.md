# MAV120_1
- ran strings program on the executable
- pretty long and lots of crap
- notable mystrings
-- QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQj
-- btvsTdsWbXxFDvUlHsRfDPE
-- lots of strings regarding loading, thinking that has to do with dynamic loading

-- ran disas (changed asm language to intel)

0x080482cf <+0>:	push   ebp
  0x080482d0 <+1>:	mov    ebp,esp
  0x080482d2 <+3>:	and    esp,0xfffffff0
  0x080482d5 <+6>:	push   edi
  0x080482d6 <+7>:	push   esi
  0x080482d7 <+8>:	sub    esp,0x88
=> 0x080482dd <+14>:	mov    eax,ds:0x80d691c
  0x080482e2 <+19>:	mov    DWORD PTR [esp+0x8],eax
  0x080482e6 <+23>:	mov    DWORD PTR [esp+0x4],0x64
  0x080482ee <+31>:	lea    edi,[esp+0x1c]
  0x080482f2 <+35>:	mov    DWORD PTR [esp],edi
  0x080482f5 <+38>:	call   0x80493f0 <fgets>
  0x080482fa <+43>:	mov    DWORD PTR [esp],edi
  0x080482fd <+46>:	call   0x80482a0 <chomp>
  0x08048302 <+51>:	mov    esi,0x80b388c
  0x08048307 <+56>:	mov    ecx,0x18
  0x0804830c <+61>:	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
  0x0804830e <+63>:	seta   dl
  0x08048311 <+66>:	setb   al
  0x08048314 <+69>:	cmp    dl,al
  0x08048316 <+71>:	jne    0x804832e <main+95>


- just tried "btvsTdsWbXxFDvUlHsRfDPE" and it worked. that was easy...
- too easy. i assume looking through the asm for that value will help me in the next executables
- Line 0x080482dd, ran x/s on 0x80d691c and it gave me "btvsTdsWbXxFDvUlHsRfDPE"
- did some googlin and using http://www.cs.virginia.edu/~evans/cs216/guides/x86.html to determine what things mean

#MAV120_2
- running strings on it did not give anything useful
- ran gdb and disas

- notable:
   0x08048539 <+18>:	mov    DWORD PTR [ebx],0x72657375

- x says 0x72657375 is out of bounds, so not sure what that is doing

- getenv function, which I assume returns some sort of info about the computer running it
- set a breakpoint after it, and ran x/s $eax. Return "mav120" ! Looks promising
- some strcmp's afterwards
- boom it works
- curious what the u function does
-- running x/s on $edi gives me "user"
-- u also calls an s function
- in s, x/s on $edx gives  me "User"
- s returns 4. i think it counts the length of a string or something
- second time i went to s, $edx was USer
- third time: USEr
- fourth time USER
- tried stepping through the asm to see if it did something else but i do not think so

- I think the passphrase is getenv("USER"), which gets the environment variable USER. I changed USER to Mat, and the new correct passphrase was mat. I think the u function capitalizes a string. so maybe getenv(u("user")) was called.


#MAV120_3
- strings did not give me much, except getchar, printf, puts, and "&#k!, -x|?"
- curious what "&#k!, -x|?" is for
- great, the file is stripped of the debugging table
- this has 4 input lines
- Tried using gdb but do not know how to use that since I do not know when the main method starts

- Ran objdump -d -Mintel mav120_3 > 3.asm
- Inspecting the text file in my editor
- I see @plt after a lot of function names. Googled it and it seems complicated and has something to do with dynamic loading.
- Ran ./mav120_3 again, and it seems like it has a random number of input lines.

- the getchar method is a C library function. I googled it, and it returns the next character from stdin.

- struggling with trying to get gdb to break on a function, so I am just going to look at the asm file I got from objdump
- I'm thinking "Unlocked with passphrase %s" or "Congratulations" must be in the data segment, so I am going to look for those in the assembly, and hopefully look around to see if I can make sense of what is going on

- cant find the text, so I am going to try objdump -D instead of objdump -d

- after looking at getchar's documentation and entering random things as the password, I realize that the function takes in 16 characters. Initially I thought it was random because I did not count an 'enter' as a character.
- So the password is probably 16 characters long.

- Still cannot figure out how to break on main, but doing b getchar and disas at least gave me something readable
- That was a dead end

- Looked more at the assembly and disas. Break on 0x8048370, the first thing on the register, and then ran disas 0x8048370, +50.





0x08048428:	sub    esp,0x34
0x0804842b:	mov    DWORD PTR [ebp-0x10],0x0
0x08048432:	mov    DWORD PTR [ebp-0xc],0x0
0x08048439:	jmp    0x804844b
0x0804843b:	mov    ebx,DWORD PTR [ebp-0xc]
0x0804843e:	call   0x8048314 <getchar@plt>
0x08048443:	mov    BYTE PTR [ebp+ebx*1-0x21],al
0x08048447:	add    DWORD PTR [ebp-0xc],0x1
0x0804844b:	cmp    DWORD PTR [ebp-0xc],0xf
-----


0x08048443:	mov    BYTE PTR [ebp+ebx*1-0x21],al
# increment i by one
0x08048447:	add    DWORD PTR [ebp-0xc],0x1
# compare to 16
0x0804844b:	cmp    DWORD PTR [ebp-0xc],0xf
0x0804844f:	jle    0x804843b
0x08048451:	mov    eax,DWORD PTR [ebp-0xc]
0x08048454:	mov    BYTE PTR [ebp+eax*1-0x21],0x0
0x08048459:	mov    DWORD PTR [ebp-0xc],0x1
0x08048460:	jmp    0x804849e
0x08048462:	mov    eax,DWORD PTR [ebp-0xc]
0x08048465:	sub    eax,0x1
0x08048468:	movzx  eax,BYTE PTR [ebp+eax*1-0x21]
0x0804846d:	movsx  eax,al
0x08048470:	cmp    eax,0x3e

----

=> 0x0804849e:	cmp    DWORD PTR [ebp-0xc],0x10
   0x080484a2:	jle    0x8048462
   0x080484a4:	cmp    DWORD PTR [ebp-0x10],0x9
   0x080484a8:	jne    0x80484c0 # this prints out incorrect. so we want base pointer to be 9
   0x080484aa:	mov    eax,0x80485d4
   0x080484af:	lea    edx,[ebp-0x21]
   0x080484b2:	mov    DWORD PTR [esp+0x4],edx
   0x080484b6:	mov    DWORD PTR [esp],eax


------

```js
>>&<|~

|~^


0x3e
0x3e
0x26
0x3c
0x7c
0x7e
0x5e
```

```js
// theres some sort of counter that adds to 9. if the
// counter is 9, then the password is correct
if(c == >) {
	// > : 3e
	// je 0x8048495
}
if(c > >) {
	// > : 3e
	// jg 0x8048486
}
if(c == &) {
	// & : 26
	// je 0x8048495
}
if(c == <) {
	// <: 3c
	// je     0x8048495
}

jmp 0x804849a

if(c == ~) {
	// ~: 7e
	// je     0x8048495
}

if(c != ^) {
	// ^: 5e
	// jne 0x804849a
}

```

set a breakpoint on `0x08048470`, this is where the comparisons happen

# this is looping throuhg
=> 0x08048462:	mov    eax,DWORD PTR [ebp-0xc]
   0x08048465:	sub    eax,0x1
   0x08048468:	movzx  eax,BYTE PTR [ebp+eax*1-0x21]
   0x0804846d:	movsx  eax,al
   0x08048470:	cmp    eax,0x3e
   0x08048473:	je     0x8048495
   0x08048475:	cmp    eax,0x3e
   0x08048478:	jg     0x8048486
   0x0804847a:	cmp    eax,0x26
   0x0804847d:	je     0x8048495
   0x0804847f:	cmp    eax,0x3c
   0x08048482:	je     0x8048495
   0x08048484:	jmp    0x804849a
   0x08048486:	cmp    eax,0x7c
   0x08048489:	je     0x8048495
   0x0804848b:	cmp    eax,0x7e
   0x0804848e:	je     0x8048495
   0x08048490:	cmp    eax,0x5e
   0x08048493:	jne    0x804849a
   0x08048495:	add    DWORD PTR [ebp-0x10],0x1
   0x08048499:	nop
   0x0804849a:	add    DWORD PTR [ebp-0xc],0x1
   0x0804849e:	cmp    DWORD PTR [ebp-0xc],0x10
   0x080484a2:	jle    0x8048462
   0x080484a4:	cmp    DWORD PTR [ebp-0x10],0x9
   0x080484a8:	jne    0x80484c0
   0x080484aa:	mov    eax,0x80485d4
   0x080484af:	lea    edx,[ebp-0x21]
   0x080484b2:	mov    DWORD PTR [esp+0x4],edx
   0x080484b6:	mov    DWORD PTR [esp],eax
   0x080484b9:	call   0x8048344 <printf@plt>
   0x080484be:	jmp    0x80484cc
   0x080484c0:	mov    DWORD PTR [esp],0x8048602




3e 3e 26 3c 7c 7e 5e

   => 0x08048470:	cmp    eax,0x3e
      0x08048473:	je     0x8048495
      0x08048475:	cmp    eax,0x3e
      0x08048478:	jg     0x8048486
      0x0804847a:	cmp    eax,0x26
      0x0804847d:	je     0x8048495
      0x0804847f:	cmp    eax,0x3c
      0x08048482:	je     0x8048495
      0x08048484:	jmp    0x804849a
      0x08048486:	cmp    eax,0x7c
      0x08048489:	je     0x8048495
      0x0804848b:	cmp    eax,0x7e
      0x0804848e:	je     0x8048495
      0x08048490:	cmp    eax,0x5e
