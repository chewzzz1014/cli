echo 'The quick brown; fox jumps over the lazy  dog' > sample.txt

# extract nth character(s) in each line of file
cut -c 5 sample.txt # 5th
cut -c 5-10 sample.txt # 5-10th
cut -c 5- sample.txt # from 5th till end
cut -c -5 sample.txt # from start till 5th

# extract contents by a field
# -f: cut text based on field. default delimiter is tab
# stdout the 2th element (dog)
cut -f 2 sample.txt # tab as delimiter


# set custom delimiter (;)
# -d to set delimiter
cut -f 1 -d ';' sample.txt