## Moving Files
- The mv command is used to move a file from one location in the filesystem to another.
- Permissions can have an impact on file management commands, such as the mv command. Moving a file requires write and execute permissions on both the origin and destination directories.

```
mv SOURCE DESTINATION
```

- The mv command is able to move multiple files, as long as the final argument provided to the command is the destination. For example, to move three files into the School directory:

```
sysadmin@localhost:~/Documents$ mv numbers.txt letters.txt alpha.txt School        
sysadmin@localhost:~/Documents$ ls School                                       
Art  Engineering  Math  alpha.txt  letters.txt  numbers.txt  
```

- Moving a file within the same directory is an effective way to rename it. For example, in the following example the animals.txt file is given a new name of zoo.txt:
```
mv animals.txt zoo.txt
```
