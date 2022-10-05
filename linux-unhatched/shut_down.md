## Shutting Down
- The shutdown command arranges for the system to be brought down in a safe way. All logged-in users are notified that the system is going down and within the last five minutes leading up to the shutdown, new logins are prevented.
- The shutdown command requires administrative access. Switch to root user (using `su`) before shutting down.
- shutdown command requires a time argument specifying when the shutdown should begin. Formats of this time argument can be the word now, a time of day in the format hh:mm or the number of minutes to delay in the format +minutes.

```
shutdown [OPTIONS] TIME [MESSAGE]
```

```
shutdown now
```

- The clock on our system may be set to a different timezone than the one in which you are located. To check the time in the terminal, use the date command. On our machines, the default format of the date command output is as follows:

```
weekday month day hour:minute:second UTC year
```

- The letters UTC present in the output indicates that the time is being displayed as Universal Coordinated Time.
- The shutdown command also has an optional message argument, indicating a message that will appear in the terminals of all users. For example:

```
root@localhost:~# shutdown +1 "Goodbye World!"                                  
                                                                                
Broadcast message from sysadmin@localhost                                       
        (/dev/pts/0) at 3:07 ...                                              
                                                                                
The system is going down for maintenance in 1 minute!                           
Goodbye World!                                                                  
shutdown: Unable to shutdown system                                             
root@localhost:~#                                                             
Broadcast message from sysadmin@localhost                                       
        (/dev/pts/0) at 3:08 ...                                              
                                                                                
The system is going down for maintenance NOW!                                   
Goodbye World!       
```
