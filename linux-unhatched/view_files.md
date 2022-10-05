## Viewing Files

## cat
- The cat command, which stands for “concatenate”, is often used to quickly view the contents of small files.
- The cat command will display the entire contents of the file, hence why it is mainly recommended for smaller files where the output is limited and does not require scrolling. 
- When viewing larger files, the cat command can result in very lengthy output that cannot be paused to scroll through. A better method of viewing long text files, is with a pager command which has a functionality that can pause and scroll through the output of the file
```
$ cat [OPTIONS] [FILE]
```

## head and tail
- `head` and `tail` are used to view a select number of lines from the top or bottom of a file. Taking a look at a few lines of a file can sometimes be helpful to ensure that the file is the one you want to use.
- Another reason to preview only the first or last few lines, is because some files, such as system log files are frequently updated with new entries.
- the default behavior of the head and tail commands in this shell is to display 10 lines.
```
head [OPTIONS] [FILE]
```

```
tail [OPTIONS] [FILE]
```

```
head -n number_of_lines filename
```
```
tail -n number_of_lines filename
```
