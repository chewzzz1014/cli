## Filtering Input
- The grep command is a text filter that will search input and return lines which contain a match to a given pattern.

```
grep [OPTIONS] PATTERN [FILE]
```

- For example, the `passwd` file contains the details of special system accounts and user accounts on the system. This file can be very large, however the grep command can be used to filter out information about a specific user, such as the sysadmin user. Use sysadmin as the pattern argument and passwd as the file argument:

```
#  returned the line from the passwd which contains the pattern sysadmin.
sysadmin@localhost:~/Documents$ grep sysadmin passwd                               
sysadmin:x:1001:1001:System Administrator,,,,:/home/sysadmin:/bin/bash 
```

## Regular Expressions


Basic Regex Character(s)	|Meaning
|---|---|
.	|Any one single character
[ ]	|Any one specified character
[^ ]	|Not the one specified character
*	|Zero or more of the previous character
^|	If first character in the pattern, then pattern must be at beginning of the line to match, otherwise just a literal ^
$	|If last character in the pattern, then pattern must be at the end of the line to match, otherwise just a literal $

- The following table summarizes the extended regular expressions, which must be used with either the egrep command or the -E option with the grep command:



Extended Regex Character(s)|	Meaning
|---|---|
\+	|One or more of the previous pattern
?	|The preceding pattern is optional
{ }|	Specify minimum, maximum or exact matches of the previous pattern
\|	|Alternation - a logical "or"
( )|Used to create groups


## Examples
1. **Anchor Characters**
   -  Anchor characters are one of the ways regular expressions can be used to narrow down search results. For example, the pattern root appears many times in the /etc/passwd file:

      ```
      sysadmin@localhost:~/Documents$ grep 'root' passwd
      root:x:0:0:root:/root:/bin/bash                                                 
      operator:x:1000:37::/root:
      ```
   -  To prevent the shell from misinterpreting them as special shell characters, these patterns should be protected by strong quotes, which simply means placing them between single quotes.

```
# pattern appears at the beginning of the line
# note: pattern found are in red
sysadmin@localhost:~/Documents$ grep '^root' /etc/passwd
root:x:0:0:root:/root:/bin/bash
```

```
#  ensure a pattern appears at the end of the line, 
# note: pattern found are in red
sysadmin@localhost:~/Documents$ grep 'r$' alpha-first.txt
B is for Bear
F is for Flower
```

```
#  find any line that contained the letter r followed by exactly two characters (which can be any character except a newline) and then the letter f
# note: pattern found are in red
sysadmin@localhost:~/Documents$ grep 'r..f' red.txt
reef
roof
```

```
# find all words that have at least four characters the following pattern can be used:
# note: pattern found are in red
sysadmin@localhost:~/Documents$ grep '....' red.txt                             
reef
reeed
roof                                                                            
reed
root
reel
read
```


```
# find all the lines in the profile.txt which have a number in them, use the pattern [0123456789] or [0-9]:
# note: pattern found are in red
sysadmin@localhost:~/Documents$ grep '[0-9]' profile.txt
I am 37 years old.
3121991
I have 2 dogs.
123456789101112
```
















