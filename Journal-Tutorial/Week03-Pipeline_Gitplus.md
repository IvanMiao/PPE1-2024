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

1. `wc`
2. `grep`
3. `sort`
4. `uniq`
5. `awk`





