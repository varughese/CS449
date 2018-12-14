# CS 449
`CS 449` at Pitt is **Intro to Systems Software**. I took it with Dr. Misurda in Spring '18.

It is the first class we were introduced to C and the precursor to OS. This is collection of the labs and projects we did in this class. Here are brief descriptions of the projects we completed. For more in-depth descriptions go into the individual readmes. 

# Project 1: RPS & BMP Editor
This project was to get familiar with C. It had two parts. A simple Rock, Paper, Scissors game to get used to strings in C. And then a Bitmap editor that could inverts and grayscale images. The Bitmap editor was cool because we were actually working with the bytes in a file.
  
# Project 2: Password Cracking
This project was very challenging. Given 3 compiled executables, we were tasked with finding the passwords that needed to be entered into the programs to make them succeed. This required decompiling to assembly, using `gdb`, and other techniques.

# Project 3: Malloc
Implement a custom `malloc` function. This required thinking about how malloc worked and how objects and pointers in memory were stored.

# Project 4: My Shell
Create a custom shell. Pretty standard for a systems software class. Involved using threading and syscalls.

# Project 5: /dev/pi
Create a device driver that could return the specified digits of pi. Code was easy. The difficulty was conceptually understanding what was going.
