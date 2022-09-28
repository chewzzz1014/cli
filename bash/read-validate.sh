re="^[-0-9 ]+ [-,+,*,/] [-0-9]+$"

echo "Enter an arithmetic operation:"

read s

if [[ "$s" =~ $re ]]; then
    echo "Operation check passed!"
else
    echo "Operation check failed!"
fi