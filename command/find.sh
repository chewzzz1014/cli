# return all directory starting from current dir
find . -type d

# return all files starting from current dir
find . -type f

# find file from current dir to its child dir
# can use wildcard too
find . -type f -name [filename]

# -iname for case insensitive
# find file from current dir to its child dir
find . -type f -iname "*.sh"

# find files modified in less than 10 minutes
# - : less than
# + : for than
find . -type f -mmin -10

