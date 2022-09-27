# accessing arguments passed 

# $0 is name of script
# $1 is first argument, $2 is second argument and so on
# $# denotes total number number of params
# $* all params passed will be collapsed as single variable
# $@ all param are split into separare words

echo "We received $# info about you..."
echo "Script name is $0"
echo "Your name is $1"
echo "Your age is $2"
echo "In a nutshell, $*"
echo "In a nutshell, $@"