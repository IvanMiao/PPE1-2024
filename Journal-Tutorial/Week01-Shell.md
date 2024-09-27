## Week 01 - Shell

[TOC]

### Basic commands

1.  **Don't get lost in your files**

   When navigating through your directories, it’s important to know where you are and what files are around you. For example, If we use `pwd` to print the path, we might see something like that: `/home/username/Documents` , which tells us that we are in the directory `Documents`. This helps us understand our position, allowing us to move forward or move back on this path.

| **Command** |         **Options**          |      **Full Name**      |                     **Function**                     |
| :---------: | :--------------------------: | :---------------------: | :--------------------------------------------------: |
|    `pwd`    |                              | print working directory |           show the current directory path            |
|    `ls`     | `-l` (detailed) , `-a` (all) |          list           | list all files and directories in the current folder |
|    `cd`     |                              |    change directory     |            move to a different directory             |

​	When using `cd` ,  `./` refers to the current directory, while `../` takes us to the parent directory. `/` represents the root directory, and `~/` refers to user's home directory.



2. **Managing files and directories**

   To create new files or organize files into different folders:

| **Command** |        **Option**s        | **Full Name**  |                   **Function**                    |
| :---------: | :-----------------------: | :------------: | :-----------------------------------------------: |
|   `mkdir`   |                           | make directory |              create a new directory               |
|   `touch`   |                           |       -        |               create an empty file                |
|    `rm`     | `-r` : delete a directory |     remove     |          delete a file ***permanently***          |
|    `mv`     |                           |      move      | move or rename a file/directory to a new location |
|    `cp`     |                           |      copy      |           copy a file to a destination            |



3. **Viewing file contents**

| **Command** | **Option**s | **Full Name** |                         **Function**                         |
| :---------: | :---------: | :-----------: | :----------------------------------------------------------: |
|    `cat`    |             |  concatenate  |          display the content of a file all at once           |
|   `more`    |             |       -       | display the content page by page. <u>can be replaced by `less`, 'cause `less` is more powerful !</u> |
|   `less`    |             |       -       |      open the file for viewing, allow scrolling through      |



4. **Other**

| **Command** | **Option**s |          **Full Name**          |                   **Function**                   |
| :---------: | :---------: | :-----------------------------: | :----------------------------------------------: |
|    `man`    |             |             manual              |  displays the manual for a given command. RTFM!  |
|   `echo`    |             |                -                |      print a line of text or variable value      |
|   `grep`    |             | global regular expression print | search for a specific text pattern within a file |

---



### Shell Script

```shell
# !/bin/sh

for month in {01..12}; do
	mkdir -p "$month"
	mv 2016_"$month" "$month" "$month"/
done
```

