## Copying Files

## cp
- Creating copies of files can be useful for numerous reasons:
  - If a copy of a file is created before changes are made, then it is possible to revert back to the original.
  - A copy of a file can be used to transfer a file to removable media devices.
  - A copy of an existing document can be used as a template for a new document.
- Permissions can have an impact on file management commands, such as the cp command. In order to copy a file, it is necessary to have execute permission to access the directory where the file is located and the read permission for the file being copied.

- It is also necessary to have write and execute permission on the directory the file is being copied to. Typically, there are two places where you should always have write and execute permission on the directory: your home directory and the /tmp directory.


```
cp [OPTIONS] SOURCE DESTINATION
```

## dd
- The dd command is a utility for copying files or entire partitions at the bit level.

```
dd [OPTIONS] OPERAND
```

- This command has several useful features, including:
  - It can be used to clone or delete (wipe) entire disks or partitions.
  - It can be used to copy raw data to removable devices, such as USB drives and CDROMs.
  - It can backup and restore the MBR (Master Boot Record).
  - It can be used to create a file of a specific size that is filled with binary zeros, which can then be used as a swap file (virtual memory).

```
sysadmin@localhost:~$ dd if=/dev/zero of=/tmp/swapex bs=1M count=50 
50+0 records in
50+0 records out
52428800 bytes (52 MB) copied, 0.825745 s, 635 MB/s
```

- **Arguments**:


Argument |	Description
|---|---|
if|	Input File: The input file to be read from.<br>`dd if=/dev/zero of=/tmp/swapex bs=1M count=50` <br>The example reads from the /dev/zerofile, a special file containing an unlimited number of zeros.
of|	Output File: The output file to be written.<br>`dd if=/dev/zero of=/tmp/swapex bs=1M count=50`
bs|	Block Size: The block size to be used. By default, the value is considered to be in bytes. Use the following suffixes to specify other units: K, M, G, and T for kilobytes, megabytes, gigabytes and terabytes respectively.<br>`dd if=/dev/zero of=/tmp/swapex bs=1M count=50`<br>The example uses a block size of one megabyte.
count|	Count: The number of blocks to be read from the input file.<br>dd if=/dev/zero of=/tmp/swapex bs=1M count=50<br>The example command reads 50 blocks.

- **No block size or count needs to be specified when copying over entire devices**
