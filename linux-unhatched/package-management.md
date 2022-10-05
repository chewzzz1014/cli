## Package Management
- Package management is a system by which software can be installed, updated, queried or removed from a filesystem. In Linux, there are many different software package management systems, but the two most popular are those from Debian and Red Hat. The virtual machines for this course use Ubuntu, a derivative of Debian.
- At the lowest level of the Debian package management system is the dpkg command. the Advanced Package Tool, apt-get, a front-end program (a program that users can see and interact with) to the dpkg tool, makes management of packages even easier.

## Refresh List of Packages
- Package files are commonly installed by downloading them directly from repositories located on Internet servers. The Debian repositories contain more than 65,000 different packages of software.
- Before installing a package, it is good practice to refresh the list of available packages using the `apt-get update` command.

```
sudo apt-get update
```

## Search for Package
```
#  search for keywords within these packages,
apt-cache search [keyword]
```

```
sysadmin@localhost:~$ apt-cache search cow                                      
cowsay - configurable talking cow
```

## Install Packages

```
sudo apt-get install [package]
```

## Updating Packages
- The apt-get install command can also update a package, if that package is installed and a newer version is available. If the package is not already on the system, it would be installed; if it is on the system, it would be updated.
- Updating all packages of the system should be done in two steps. First, update the cache of all packages available with apt-get update. Second, execute the apt-get upgrade command and all packages and dependencies will be updated.

```
apt-get update
```
```
apt-get upgrade
```

## Removing Packages
- The apt-get command is able to either remove or purge a package. The difference between the two is that purging deletes all package files, while removing deletes all but the configuration files for the package.
- An administrator can execute the apt-get remove command to remove a package or the apt-get purge command to purge a package completely from the system.

```
apt-get remove [package]
```
```
apt-get purge [package]
```
