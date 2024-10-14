# Week3 - Pipeline & Git+



## Pipeline

> In Unix-like computer operating systems, a pipeline is a mechanism for inter-process communication using message passing. A pipeline is a set of processes chained together by their standard streams, so that the output text of each process (stdout) is passed directly as input (stdin) to the next one. 

**Tutorials**:

​	 [What Are stdin, stdout, and stderr on Linux?](https://www.howtogeek.com/435903/what-are-stdin-stdout-and-stderr-on-linux/)

#### Three data streams (and their file descriptors)

- **0 stdin**: standard input stream.
- **1 stdout**: output.
- **2 stderr**: error messages.

#### Redirections

- **<** replace the keyboard by a file's content
- **1>** (or) **>** write a stdout in a file
- **2>** write a stderr in a file
- **&>** write a stdout and a stderr in a file

#### The pipe character "|"

we use the pipe character `|` to connect several commands.

```shell
# the stdout of cmd1 is delivered into the stdin of cmd2
cmd1 | cmd2

# the stdout and stderr are delivered into the stdin of cm2
cmd1 |& cmd2
```

#### some commands

1. **`wc` (Word Count)**

   Function: Counts the number of lines, words, and characters in a file.

   - Options:
     - `-l`: Count lines
     - `-w`: Count words

2. **`grep` (Global Regular Expression Print, g/re/p)**
   Function: Searches for a specified pattern in a file.

   - Options:
     - `-i`: Case-insensitive search
     - `-v`: Invert match, showing lines that don't match
     - `-r`: Recursive search through directories

3. **`sort`**
   Function: Sorts lines in a file.

   - Options:
     - `-n`: Sort numerically
     - `-r`: Reverse the sorting order

4. **`uniq` (Unique)**
   Function: Removes or displays repeated lines in a sorted file.

   - Options:
     - `-c`: Prefix each line with the count of occurrences
     - `-d`: Only show duplicate lines
     - `-u`: Only show unique lines

5. **`awk`**
   Function: Processes and extracts fields from a file. In this example(`awk '{print $1}'`), `awk` prints the first field (column) of each line.

   - We can also use it for more complex data manipulation by specifying patterns and actions.

6. **`cut`**
   Function: Extracts specific fields from each line in a file.

   - Options:
     - `-d <delimiter>`: Specify a field delimiter (default is tab)
     - `-f <fields>`: Select specific fields to display, e.g. `-f1,3` for the first and third tab-delimited fields, `-f1-3` extract from first up to third field(ends included)



