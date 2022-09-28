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


is_triangle() {
    if [ "$(( $1 + $2 + $3 ))" -eq 180 ]; then
        echo Yes 
    else
        echo No 
    fi
}

file_exists() {
    # add your solution here
    if [ -e $1 ]; then
        if [ -s $1 ]; then
            echo File exists and is not empty
        else
            echo File exists but is empty
        fi 
    else
        echo File does not exist
    fi
}

is_in_range() {
    # add your solution here
    if [ $1 -ge 500 -a $1 -le 1000 ]; then
        echo "Good Job!"
    else
        echo "Revise the essay"
    fi
}

