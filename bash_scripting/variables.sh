
#  variable HOME contains current user's home directory
echo Home directory: $HOME 

# variable PATH contains list of directories in which a program will be searched.
echo Path: $PATH

# environment variables: subset of shell variables exported to any new shell from the current one
# convert from variable -> environment variable
export variable

# view list of shell var:
# set | less

# view list of env var:
# printenv | less


# create var
# don't need to use the $ sign when set the value
#  no spaces around the = sign
# name can consist of letters, numbers, and underscore characters, but the first symbol cannot be a number.
MY_VARIABLE="some value"

echo $MY_VARIABLE


# alias:
# alias name-of-alias='command'
alias rm = "rm -ibash"


# watch all predefined and setted aliases
alias


# remove alias from env
unalias rm