# 3. Archives and Submission

Your labs and projects will be submitted by copying (`cp`) files to a special directory.

But we don't want a big unholy mess, so

# please, for the love of all that is good in this world, follow these instructions for this and every single lab and project you do. bookmark this page. just follow the instructions. *just follow them*

### 1. Make sure your name and username are in a comment at the top of your `.c` file.

It'll help out the graders!

### 2. `cd` into your `private/cs449` directory.

`cd ..` should take you there.

### 3. Make a copy of the `lab1` directory.

**Making a copy is a good idea. It reduces the chances of something messing up and you losing all your work.**

Do `cp -r lab1/ lab1_copy/`.

The `-r` on `cp` means "recursive" - it'll copy that folder, everything inside it, every folder inside it, etc...

### 4. Make a `tar` archive.

# This is the step everyone messes up and loses their work on. Please be careful.

`tar` lets you bundle several files together.

Do this, ***using your username, not abc123.***

```bash
$ tar cvf abc123_lab1.tar lab1/
```

### 5. Check that the `tar` archive has the right files (please do this)

You can use **`tar tvf filename`** to look inside the tar file to make sure it has the right files. It should look something like this (but with YOUR username...):

```bash
$ tar tvf abc123_lab1.tar

drwxr-xr-x abc123/UNKNOWN1    0 2018-01-19 01:06 lab1/
-rw-r--r-- abc123/UNKNOWN1   78 2018-01-19 00:54 lab1/lab1.c
-rwxr-xr-x abc123/UNKNOWN1 6424 2018-01-19 01:06 lab1/lab1
```

### 5. `gzip` the tar file

This compresses it. It's as easy as:

```bash
$ gzip abc123_lab1.tar
```

Now it should have transformed into `abc123_lab1.tar.gz`.

### 6. Copy it to the submission directory

**Finally, you can submit.**

```bash
$ cp abc123_lab1.tar.gz ~jfb42/submit/449
```

It will say nothing if it worked correctly. No news is good news.

But if you're unsure, you can check that you submitted it properly like so:

```bash
$ ls ~jfb42/submit/449/abc123_lab1.tar.gz
/afs/pitt.edu/home/j/f/jfb42/submit/449/abc123_lab1.tar.gz
```

### If you messed up and need to submit again...

Then fix your mistake, repeat these steps, but rename your `tar` file to `abc123_lab1_2.tar.gz` before copying it to the submission directory.

If you mess up again, repeat, name it `abc123_lab1_3.tar.gz`, copy.

If you.... ok I think you get the idea.
