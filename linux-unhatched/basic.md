## Contents
1. [Basic Command Syntax Intro](#Basic-Command-Syntax)
2. [Argument](#Argument)
3. [Option](#Option)
4. [cd](#pwd-Printing-Working-Directory)
5. [ls](#ls-Listing-Files)
6. [Sorting of ls -l](#Sorting-of-ls)

## Basic Command Syntax

What is a command? A command is a software program that when executed on the CLI (command line interface), performs an action on the computer. When you type in a command, a process is run by the operating system that can read input, manipulate data and produce output. A command runs a process on the operating system, which then causes the computer to perform a job.

Most commands follow a simple pattern of syntax:
```
command [options…] [arguments…]
```

## Argument
- An argument can be used to specify something for the command to act upon. The ls command can be given the name of a directory as an argument, and it will list the contents of that directory. In this example, `Documents` is an argument:

```
$ ls Documents
```

## Option
- Options can be used to alter the behavior of a command.
- In the following example, the -l option is provided to the ls command, which results in a "long display" output, meaning the output gives more information about each of the files listed:

```
$ ls -l
```

```
# -l gives a long listing format while -r reverses the listing
# below commands give the same output (reveresed long display of files)
$ ls -r
$ ls -l -r
$ ls -rl
$ ls -lr
```

- Ultimately, commands can use many combinations of options and arguments. The possibilities for each command will be unique.
- Remember multiple options can be denoted separately or combined:

```
# same commands
$ aptitude -v -v moo
$ aptitude -vv moo
```

## pwd, Printing Working Directory
-  prints the working directory, your current location within the filesystem

```
$ pwd
```

## cd Changing Directories
- Directories are a type of file used to store other files–they provide a hierarchical organizational structure.
- An absolute path allows you to specify the exact location of a directory. It always starts at the root directory, therefore it always begins with the / character.
- A relative path gives directions to a file relative to your current location in the filesystem. Relative paths do not start with the / character, they start with the name of a directory.
- Option:
  - `..`:  one directory higher relative to the current directory, sometimes referred to as the parent directory
  - `.`: current directory. 
  - `~`: The home directory of the current user. Eg, `/home/sysadmin`
```
$ cd [option] [path]
```

```
# move to root directory
$ cd /
```

## ls Listing Files

-  list the contents of a directory.

```
$ ls [OPTIONS] [FILE]
```

```
# list files in current dir
$ ls
```

```
# To learn the details about a file, such as the type of file, the permissions, ownerships or the timestamp
$ ls -l
```

Each line of output of `ls -l` corresponds to a file contained within the directory. The information can be broken down into fields separated by spaces. The fields are as follows:

```
- rw-r--r-- 1 root   root  18047 Dec 20  2017 alternatives.log       
            
d rwxr-x--- 2 root   adm    4096 Dec 20  2017 apache2  
```
1. File Type
   |Symbol|File Type| Description|
   |---|---|---|
   d|	directory|	A file used to store other files.
   -|	regular file	|Includes readable files, images files, binary files, and compressed files.
    l|	symbolic link	|Points to another file.
    s	|socket	|Allows for communication between processes.
    p|	pipe|	Allows for communication between processes.
    b|	block file	|Used to communicate with hardware.
    c|character file|	Used to communicate with hardware.

2. Permissons
   -  nine specify permissions
   -  indicate how certain users can access a file. 

3. Hard Link Count
   - This number indicates how many hard links point to this file.

4. User Owner
   - Every time a file is created, the ownership is automatically assigned to the user who created it.

5. Group Owner
   - Indicates which group owns this file

6. File Size
7. Timestamp  
   - the time that the file's contents were last modified.

8. Filename
   - In the case of symbolic links, a file that points to another file, the link name will be displayed along with an arrow and the pathname of the original file.


## Sorting of ls
- By default the output of the ls command is sorted alphabetically by filename.

1. `-t`
   -  sort the files by timestamp

```
$ ls -l -t
```

2. `-S`
   - sort the files by file size:

```
$ ls -l -S
```

3. `-r`
   - reverse the order of any type of sort.

```
$ ls -l -r
$ ls -lSr
```
