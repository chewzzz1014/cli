# uniq: output the content w/o duplicated words
# only detect duplicate lines that are adjacent (no line between words)
uniq findUnique.txt

# -c : count number of occurence of a line
uniq -c findUnique.txt

# -u: get unique value only
uniq -u findUnique.txt

# -u : get duplicate values
uniq -d findUnique.txt