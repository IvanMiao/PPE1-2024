## Week 01 - Shell

[TOC]

### Basic commands

0. **Syntax**:
    `Command [-Options] Argument`
    <u>**Attention**</u>: In Shell, spaces act as separators. This can cause troubles when working with file paths that contain spaces. For a solution, see: [How To Deal With Spaces in Paths](https://medium.com/@leedowthwaite/dealing-with-spaces-in-paths-f26856aef06f) 

<br/>

0. **Don't get lost in your files**

    When navigating through your directories, it’s important to know where you are and what files are around you. For example, If we use `pwd` to print the path, we might see something like that: `/home/username/Documents` , which tells us that we are in the directory `Documents`. This helps us understand our position, allowing us to move forward or move back on this path.

| **Command** |         **Options**          |      **Full Name**      |                     **Function**                     |
| :---------: | :--------------------------: | :---------------------: | :--------------------------------------------------: |
|    `pwd`    |                              | print working directory |           show the current directory path            |
|    `ls`     | `-l` (detailed) , `-a` (all) |          list           | list all files and directories in the current folder |
|    `cd`     |                              |    change directory     |            move to a different directory             |

​	When using `cd` ,  `./` refers to the current directory, while `../` takes us to the parent directory. `/` represents the root directory, and `~/` refers to user's home directory.

<br/>

2. **Managing files and directories**

   To create new files or organize files into different folders:

| **Command** |        **Option**s        | **Full Name**  |                   **Function**                    |
| :---------: | :-----------------------: | :------------: | :-----------------------------------------------: |
|   `mkdir`   |                           | make directory |              create a new directory               |
|   `touch`   |                           |       -        |               create an empty file                |
|    `rm`     | `-r` : delete a directory |     remove     |          delete a file ***permanently***          |
|    `mv`     |                           |      move      | move or rename a file/directory to a new location |
|    `cp`     |                           |      copy      |           copy a file to a destination            |

<br/>

3. **Viewing file contents**
   
   We can display file contents on the terminal, without opening any editors!

| **Command** | **Option**s | **Full Name** |                         **Function**                         |
| :---------: | :---------: | :-----------: | :----------------------------------------------------------: |
|    `cat`    |             |  concatenate  |          display the content of a file all at once           |
|   `more`    |             |       -       | display the content page by page. <u>can be replaced by `less`, 'cause `less` is more powerful !</u> |
|   `less`    |             |       -       |      open the file for viewing, allow scrolling through      |

<br/>

4. **Other**

| **Command** | **Option**s |          **Full Name**          |                    **Function**                    |
| :---------: | :---------: | :-----------------------------: | :------------------------------------------------: |
|    `man`    |             |             manual              | displays the manual for a given command. **RTFM!** |
|   `echo`    |             |                -                |       print a line of text or variable value       |
|   `grep`    |             | global regular expression print |  search for a specific text pattern within a file  |

<br/>

---



### Shell Script

- Some Tutorials:
  [The Shell Scripting Tutorial](https://www.shellscript.sh/) (EN)
  [Scripts Shell](https://linux.goffinet.org/administration/scripts-shell/) [FR]



- an example:

```bash
# !/bin/sh

for month in {01..12}; do
	mkdir -p "$month"
	mv 2016_"$month"* "$month"/
done
```





#### Rewrite a script in one line

If we do that, a script becomes a command that can be run directly in the terminal. (Hope it's not too long)

Rewrite the script above:
``` bash
for month in {01..12};do mkdir -p "$month";mv 2016_"$month"* "$month"/;done
```

