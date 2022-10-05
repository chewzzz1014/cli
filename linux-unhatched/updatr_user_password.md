## Updating User Passwords
The passwd command is used to update a user’s password. Users can only change their own passwords, whereas the root user can update the password for any user.

```
passwd [OPTIONS] [USER]
```

```
sysadmin@localhost:~$ passwd                                                    
Changing password for sysadmin.                                                 
(current) UNIX password:                                                        
Enter new UNIX password:                                                       
Retype new UNIX password:                                                       
passwd: password updated successfully  
```

## View Status Information of Password

```
passwd -S [USER]
```

```
sysadmin@localhost:~$ passwd -S sysadmin                                        
sysadmin P 12/20/2017 0 99999 7 -1
```


Field|	Example|	Meaning
|---|---|---|
User Name|	sysadmin	|The name of the user.
Password |Status|	P	P indicates a usable password.<br>L indicates a locked password.<br>NP indicates no password.
Change Date|	03/01/2015|	The date when the password was last changed.
Minimum|	0|	The minimum number of days that must pass before the current password can be changed by the user.
Maximum	|99999	|The maximum number of days remaining for the password to expire.
Warn	|7	|The number of days prior to password expiry that the user is warned.
Inactive|	-1	|The number of days after password expiry that the user account remains active.

