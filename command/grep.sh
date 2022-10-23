# prints the line in readme.md that contains the word, javascript
grep javascript notes/readme.md

# check every file in notes that contains the world root
grep root notes/*

# -i for case-insensitive search
# -v will invert the search (print all lines that dont match)


# find lines containing #"hello" in find.sh
grep "hello" ./find.sh
# use -w for finding whole word only. Eg, "hellow" won't match
# -i for case insensitive
# -n for displaying line number 
grep -win 'hello' ./find.sh


# display 4 lines before the line where regex match
grep -B 4 "hello" ./find.sh
# display 4 lines after the line where regex match
grep -A 4 "hello" ./find.sh
# display 4 lines before abd after the line where regex match
grep -C 4 "hello" ./find.sh

# recursively search inside file in a directory
grep -r "hello" ./

# -l will display file name instead of lines matching the regex
grep -l "hello" ./

# pipe the output of history to grep
# showing git history
history | grep "git history"


# using Perl compatible regex
grep -P "\d{3}-\d{3}-\d{4}" [file]