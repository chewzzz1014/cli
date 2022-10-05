## Network Configuration
## ifconfig
- The ifconfig command stands for "interface configuration" and is used to display network configuration information.
- The iwconfig command is similar to the ifconfig command, but it is dedicated to wireless network interfaces.
- The ifconfig command can also be used to temporarily modify network settings. Typically these changes should be permanent, so using the ifconfig command to make such changes is fairly rare.

```
ifconfig [OPTIONS] 
```

## ping
- The ping command is used to verify connectivity between two computers. It does this by sending packets to another machine on a network. If the sender receives a response it should be possible to connect to that machine.
- Information is sent using “packets”; the encapsulated unit of data sent over a network. In order for the packets to find the other computer, they will need an address. The ping command uses IP addresses to identify a computer on the network that it wants to connect to.
- By default, the ping command will continue sending packets until the break command (CTL + C) is entered at the console. 
- To limit how many pings are sent, use the -c option followed by the number of pings to be sent. The example below shows ping being limited to 4 iterations with -c 4.

```
root@localhost:~# ping -c 4 192.168.1.2                                       
PING 192.168.1.2 (192.168.1.2) 56(84) bytes of data.                          
64 bytes from 192.168.1.2: icmp_req=1 ttl=64 time=0.051 ms                    
64 bytes from 192.168.1.2: icmp_req=2 ttl=64 time=0.064 ms                    
64 bytes from 192.168.1.2: icmp_req=3 ttl=64 time=0.050 ms                    
64 bytes from 192.168.1.2: icmp_req=4 ttl=64 time=0.043 ms                    
                                                                              
--- 192.168.1.2 ping statistics ---                                           
4 packets transmitted, 4 received, 0% packet loss, time 2999ms                
rtt min/avg/max/mdev = 0.043/0.052/0.064/0.007 ms   
```
- The ping command may fail even though the remote machine is connecting. This is because some administrators configure their machines, or even entire networks, not to respond to ping requests as a security measure. The ping command also works with a hostname, or domain name like yahoo.com. Using this first saves time, if that ping command is successful, there is proper name resolution AND the IP address is functioning properly as well.
