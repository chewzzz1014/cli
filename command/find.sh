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
# + : more than
find . -type f -mmin -10

# > 1 min ago and less than 5 min ago
find . -type f -mmin +1 -mmin -5


# find files modified in more than 20 days
find. -type f -mtime +20


# find files of more than 5 MB
# can also use 'k' for KB and 'G' for GB
find . -size +5M


# find empty files in dir
find . -empty

# find files by permission
find . -perm 777


#  execute command on selected files
find [path] -exec [command]

# use {} as placeholder for the result found
# end with +
find my_folder -type d -exec chmod 775 {} +