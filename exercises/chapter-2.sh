# 1. Copy a file from one directory to another.
mv practice/file1.txt ./

# 2. Move a file from one directory to another.
mv file1.txt practice/

# 3. Rename a file in the same directory.
mv practice/file1.txt practice/file_1.txt

# 4. Copy a directory and all of its contents to another location.
cp practice/ ./ -r

# 5. Move a directory and all of its contents to another location.
mv practice/ ./ -r 

# 6. Rename a directory in the same location.
mv practice/ practices/ 

# 7. Copy multiple files to another directory.
cp file1.txt file2.txt ../

# 8. Move multiple files to another directory.
mv practice/file1.txt practice/file2.txt ./

# 9. Copy files with specific extensions to another directory.
cp *.txt .

# 10. Move files with specific extensions to another directory.
mv *.txt .

# 11. Rename multiple files in the same directory.
mv *.txt test.txt 

# 12. Copy a file to a directory using an absolute path.


# 13. Move a file to a directory using an absolute path.

# 14. Copy a directory to another directory using a relative path.
cp practice/ .

# 15. Move a directory to another directory using a relative path.
mv practice/ .

# 16. Copy a file to the home directory.
cp practice/file1.txt ~/

# 17. Move a file to the home directory.
mv practice/file1.txt ~/

# 18. Copy a directory to the root directory.
cp practice/ /

# 19. Move a directory to the root directory.
mv practice/ /

# 20. Rename a file to a new name with spaces in it.


# 21. Create a new file named “permission_file.txt” and change its permissions to read-only for the owner, and no access for others.


# 22. Create a new directory named “permission_dir” and change its permissions to allow the owner to read, write, and execute, and no access for others.


# 23. Add write permission to the group owner of “permission_file.txt”.


# 24. Add execute permission to others for “permission_dir”.


# 25. Change the owner of “permission_file.txt” to another user and verify the change.
