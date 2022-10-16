# one-page view of file contents
# space bar for next page, b for previous page and q to exit
less find.sh

# diffrences between 2 files
diff find.sh grep.sh

# to check the file format of a file 
file find.sh

# first n lines of file
head -5 find.sh
# last n lines of file
tail -5 find.sh

# configuration files (start with .) in home directory 
ls -a