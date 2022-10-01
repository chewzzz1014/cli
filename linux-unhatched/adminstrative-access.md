Contents
1. [su Command](#su)
2. [sudo Command](#sudo)

## Administrative Access
Logging in as the root user provides administrative access, allowing for the execution of some of the privileged commands.

## su

```
su OPTIONS USERNAME
```

- temporarily act as a different user. It does this by creating a new shell. 
- The shell is simply a text input console that lets you type in commands. By default, if a user account is not specified, the su command will open a new shell as the root user, which provides administrative privileges.
-  Utilizing the login shell option is recommended, as the login shell fully configures the new shell with the settings of the new user. This option can be specified one of three ways:

```
su -
su -l
su --login 
```

- After executing the su command, a password is required.
- To logout and return to the uder account, use the exit command. 

```
$ exit
```

![image](https://user-images.githubusercontent.com/92832451/191514530-b42b1d5d-707d-46eb-bb3d-14575c88be95.png)


## sudo
```
sudo [OPTIONS] COMMAND
```

```
# perform task that require adminstrative privileges
$ sudo sl
[sudo] password for sysadmin:
```
- allows a user to execute a command as another user without creating a new shell. Instead, to execute a command with administrative privileges, use it as an argument to the sudo command.
- Like the su command, the sudo command assumes by default the root user account should be used to execute commands.
- The sudo command can be used to switch to other user accounts as well. To specify a different user account use the -u option.
- The sudo command only provides administrative access for the execution of the specified command. This is an advantage as it reduces the risk that a user accidentally executes a command as root. The intention to execute a command is clear; the command is executed as root if prefixed with the sudo command. Otherwise, the command is executed as a regular user.

