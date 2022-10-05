## Viewing Processes
- Running a command results in something called a process. 
- In the Linux operating system, processes are executed with the privileges of the user who executes the command. This allows for processes to be limited to certain capabilities based upon the user identity.
- Although there are exceptions, generally the operating system will differentiate users based upon whether they are the administrator. Typically regular users, like the sysadmin user, cannot control another user's processes. Users who have administrative privileges, like the root account, can control any user processes, including stopping any user process.
- The ps command can be used to list processes. The ps command will display the processes that are running in the current terminal by default.

```
ps [OPTIONS]
```

- The output includes the following columns of information:
  - PID: The process identifier, which is unique to the process. This information is useful for controlling the process by its ID number.
  - TTY: The name of the terminal where the process is running. This information is useful for distinguishing between different processes that have the same name.
  - TIME: The total amount of processor time used by the process. Typically, this information isn't used by regular users.
  - CMD: The command that started the process.

```
# The -e option will display every process:
ps -e
```

```
#  provides more detail in the output of the command, including options and arguments
ps -ef
```
