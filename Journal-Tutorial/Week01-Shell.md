## Week 01 - Shell

### Basic commands

1.  **Don't get lost in your files**:

   When navigating through your directories, it’s important to know where you are and what files are around you. For example, If we use `pwd` to print the path, we might see something like that: `/home/username/Documents` , which tells us that we are in the directory `Documents`. This helps us understand our position, allowing us to move forward or move back on this path.

| **Command** |         **Argument**         |      **Full Name**      |                     **Function**                     |
| :---------: | :--------------------------: | :---------------------: | :--------------------------------------------------: |
|    `pwd`    |                              | print working directory |           show the current directory path            |
|    `ls`     | `-l` (detailed) , `-a` (all) |          list           | list all files and directories in the current folder |
|    `cd`     |                              |    change directory     |            move to a different directory             |

​	When using `cd` ,  `./` refers to the current directory, while `../` takes us to the parent directory.

2. **Managing files and directories**

   To create new files or organize files into different folders. 

| **Command** |       **Argument**        | **Full Name**  |                   **Function**                    |
| :---------: | :-----------------------: | :------------: | :-----------------------------------------------: |
|   `mkdir`   |                           | make directory |              create a new directory               |
|   `touch`   |                           |       -        |               create an empty file                |
|    `rm`     | `-r` : delete a directory |     remove     |          delete a file ***permanently***          |
|    `mv`     |                           |      move      | move or rename a file/directory to a new location |
|    `cp`     |                           |      copy      |           copy a file to a destination            |

