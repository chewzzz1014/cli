# add your solution
re="^[-0-9 ]+ [-,+,*,/] [-0-9]+$"

echo "Enter an arithmetic operation:"

read s

if [[ "$s" =~ $re ]]; then
    arithmetic_result=$(( $s ))
    printf "%s\n" "$arithmetic_result"
else
    echo "Operation check failed!"
fi