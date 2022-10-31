# stdout: standard out
# > is redirection operator that allow us to change where std output goes (originally to screen)
# create new file / overwrite (if file existed)
echo 'hello world!' > peanuts.txt

# add w/o overwrite
echo "this is line 2" >> peanuts.txt

# stdin: standard out
# < for stdin redirection
# peanuts.txt is stdin
# 1. cat < peanuts.txt: check the content of peanuts
# 2. Stdout output of 1 into banana.txt
cat < peanuts.txt > banana.txt

# stderr (standard error)
# redirector is file descriptor: non-negative number that is used to access a file or stream. file descriptor for stdin, stdout and stderr is 0, 1, and 2 respectively.
# redirect error
ls /path/no/exist 2>> peanuts.txt