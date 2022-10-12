# return all directory starting from current dir
find . -type d

# return all files starting from current dir
find . -type d

# find file from current dir to its child dir
find . -type f -name [filename]

# use wildcard *
# find file from current dir to its child dir
find . -type f -iname "*.sh"

# find files modified in less than 10 minutes
# - : less than
# + : for than
find . -type f -mmin -10

