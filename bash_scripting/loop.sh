function sequence() {
    
for i in $(seq $1 $2); do
    echo $i;
done
}


# 1,2, 8, 9, 10
function skip_seq() {
    for i in $(seq 1 10); do
        if [ $i -lt 3 ] || [ $i -gt 7 ]; then
            echo $i;
        fi;
    done
}