# pipe |
# get stdout of a command and make it stdin to another process
ls -la ~/cli | less

# tee
# write output of command to 2 diff streams
# output of ls (stdout) is written (stdin) into peanuts.txt and screen
ls | tee peanuts