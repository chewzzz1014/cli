# 1. Create a directory named “practice” and move into it
mkdir practice
cd practice

# 2. Create 5 text files named file1.txt to file5.txt inside the practice directory
touch file1.txt file2.txt file3.txt file4.txt file5.txt 

# 3. Display the contents of file1.txt to file5.txt
cat file1.txt file2.txt file3.txt file4.txt file5.txt

# 4. Create a subdirectory named “subdir” inside the practice directory
mkdir subdir 

# 5. Move file1.txt to subdir
mv file1.txt subdir/file1.txt 

# 6. Copy file2.txt to subdir
cp file2.txt subdir/

# 7. Rename file3.txt to new_file3.txt
mv file3.txt new_file3.txt 

# 8. Remove file4.txt
rm file4.txt 

# 9. Count the number of lines in file5.txt
wc -l file5.txt 

# 10. Concatenate file1.txt and file2.txt into a new file named combined.txt
cat file1.txt file2.txt > combine.txt 

# 11. Search for a specific word in file5.txt
grep 'hello' file5.txt

# 12. Sort the contents of file2.txt in ascending order
sort file2.txt 

# 13. Count the number of words in file3.txt
wc -w file3.txt 

# 14. Use the echo command to add text to the end of file3.txt
echo 'hello world' >> file3.txt 

# 15. Replace a specific word in file4.txt with another word
# replace 'this site' to 'my website'
sed -i 's/this site/my website/' file4.txt

# 16. Display the last 10 lines of file5.txt
head file5.txt 

# 17. Display the first 10 lines of file1.txt
tail file1.txt 

# 18. Combine the contents of file2.txt and file3.txt into a new file named combined2.txt
cat file2.txt file3.txt > combined2.txt 

# 19. Display the size of file1.txt
stat file1.txt 

# 20. Remove the subdir directory
r, subdir -r 

# 21. Change the permissions of file5.txt to allow read and write access for the owner, and read access for others
chmod u+w file5.txt
chmod o+r file5.txt 

# 22. Display the current directory
pwd 

# 23. Display the list of files in the current directory, including hidden files
ls -a 

# 24. Display the date and time
date 

# 25. Display the system information (e.g., kernel version, architecture, and uptime)
