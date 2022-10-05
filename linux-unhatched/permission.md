## Permissions
- `ls -l` output:

```
-rw-r--r-- 1 sysadmin sysadmin 647 Dec 20  2017 hello.sh 
[file type][permissions]{9} [link count] [user owner] [grp owner] [file size] [timestamp] [file name]
```
## Section of permission: First three characters
- For user owner
- The first set is for the user who owns the file. If your current account is the user owner of the file, then the first set of the three permissions will apply and the other permissions have no effect.

## Section of permission: Middle three characters
- For group owner
- The second set is for the group that owns the file. If your current account is not the user owner of the file and you are a member of the group that owns the file, then the group permissions will apply and the other permissions have no effect.

## Section of permission: Last three characters
- For everyone else
- The last set is for everyone else, any one who that first two sets of permissions do not apply to. If you are not the user who owns the file or a member of the group that owns the file, the third set of permissions applies to you.


```
Priority of permission:
User Owner > Grp Owner > Others
```

## Permission Types

Permission|Effects on File|	Effects on Directory
|---|---|---|
read (r)	|Allows for file contents to be read or copied.|	Without execute permission on the directory, allows for a non-detailed listing of files. With execute permission, ls -l can provide a detailed listing.
write (w)|	Allows for contents to be modified or overwritten. Allows for files to be added or removed from a directory.|	For this permission to work, the directory must also have execute permission.
execute (x)|	Allows for a file to be run as a process, although script files require read permission, as well.	|Allows a user to change to the directory if parent directories have execute permission as well.

## Changing File Permissions
- The chmod command is used to change the permissions of a file or directory. Only the root user or the user who owns the file is able to change the permissions of a file. (su or sudo)

> Why is the command named chmod instead of chperm? Permissions used to be referred to as modes of access, so the command chmod really means change the modes of access.

- There are two techniques for changing permissions with the chmod command: symbolic and octal. The symbolic method is good for changing one set of permissions at a time. The octal or numeric method requires knowledge of the octal value of each of the permissions and requires all three sets of permissions (user, group, other) to be specified every time.

## The Symbolic Method

```
chmod [<SET><ACTION><PERMISSIONS>]... FILE
```

1. **SET** 


Symbol	|Meaning
|---|---|
u	|User: The user who owns the file.
g	|Group: The group who owns the file.
o	|Others: Anyone other than the user owner or member of the group owner.
a	|All: Refers to the user, group and others.


2. **Action**


Symbol	| Meaning
|---|---|
|+	|Add the permission, if necessary
|=	|Specify the exact permission
|-	|Remove the permission, if necessary


3. **Permission**


Symbol|	Meaning
|---|---|
r	|read
w	|write
x	|execute

4. **File**
- pathnames for the files to assign those permissions.


## Examples
- Current permissions:

```
sysadmin@localhost:~/Documents$ ls -l hello.sh                                  
-rw-r--r-- 1 sysadmin sysadmin 647 Dec 20  2017 hello.sh   
```

```
# u character to represent the user owner permission set, the + character to indicate a permission is being added, and the x character to represent the execute permission
chmod u+x hello.sh
```
