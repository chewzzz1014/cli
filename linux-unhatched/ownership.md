## Changing File Ownership
- Initially, the owner of a file is the user who creates it.
- The chown command is used to change the ownership of files and directories. 
- Changing the user owner requires administrative access. A regular user cannot use this command to change the user owner of a file, even to give the ownership of one of their own files to another user. 
- However, the chown command also permits changing group ownership, which can be accomplished by either root or the owner of the file.

## Syntax

- To change the user owner of a file, the following syntax can be used. The first argument, [OWNER], specifies which user is to be the new owner. The second argument, FILE, specifies which file's ownership is changing.:

```
chown [OPTIONS] [OWNER] FILE 
```

```
# sysadmin -> root
$sudo chown root hello.sh
```
