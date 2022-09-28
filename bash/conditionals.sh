n1=1;
n2=2;

s1="Hello";
s2="World";

# must include space between [ and word, ] and word
if [ "$n1" -eq "$n2" ]; then
    echo "n1 and n2 are equal"
elif [ "$n1" -gt "$n2" ]; then
    echo "n1 is grater than n2"
else
    echo "n2 is grater than n1"
fi


if [ "$s1" = "$s2" ]; then
    echo "s1 and s2 are equal"
elif [ "$s1" > "$s2" ]; then
    echo "s1 is grater than s2"
else
    echo "s2 is grater than s1"
fi


solve() {
    if [ "$(( $1 + $2 + $3 ))" -eq 180 ]; then
        echo Yes 
    else
        echo No 
    fi
}
