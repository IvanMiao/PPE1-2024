# Week4 Shell Script

**Tutos:** 

[UCB: Sysadmin Decal](https://decal.ocf.berkeley.edu/) (with slides and .mp4 recording!)

[Bash Guide for Beginners](https://tldp.org/LDP/Bash-Beginners-Guide/html/)



## Bash Grammar

Bash is a **shell** and also a programming language.

To run a bash scripts(usually .sh file):

- `bash /path/to/script` OR

- ```bash
  chmod+x /path/to/script
  ./path/to/script
  
  # requires shebang
  ```

**Shebang** is a special comment at the beginning of a script, specifies that the file is a script and calls a certain interpreter. 

A shebang in shell: `#!/bin/bash`



#### Variables

```bash
NAME="value"
echo $NAME

FOO=1
expr $FOO + 1

FOO=$(expr 1 + 1)
echo $FOO
```

- An assignment **must not** have whitespaces!
- Use $VAR to call the variable
- Variables are untyped, usually considered as a string
- To evaluate expressions, use `expr`
- We can assign a output to a variable



We can save the arguments of a script as vairables :

```bash
# positional parameters

POS1="$1"
POS2="$2"
POS3="$3"

echo "$1 is the first positional parameter, \$1."
echo "$2 is the second positional parameter, \$2."
echo "$3 is the third positional parameter, \$3."
```

Execution:

```shell
~> positional.sh one two three
one is the first positional parameter, $1.
two is the second positional parameter, $2.
three is the third positional parameter, $3.
```



#### Conditionals

```bash
[ 0 -lt 1 ] && [ 0 -gt 1];
```

- Conditional expressions are always in `[]`

- signs:

  - `-eq`  ==
  - `-ne` !=
  - `-gt` >
  - `-ge` >=
  - `lt` <
  - `-le` <=

- boolean oprators:

  - `&&` and
  - `||` or

- In `[]`, `-a` for and, `-o` for or :

  ```bash
  [ 0 -lt 1 -a 0 -gt 1];
  ```



```bash
if [ "$1" -eq 79];
then
	echo "yeah"
elif [ "$1" -eq 42]
then
	echo "the answer"
else
	echo "oh no"
fi
```



#### Loops

1. For loops

   ```bash
   # Example 1
   SHEEP=("one" "dos" "tre")
   for S in $SHEEP
   do
   	echo "$S sheep..."
   done
   
   #Example 2
   n=0
   for x in {1..10}
   do
   	n=$(expr $x + $n)
   done
   echo $n
   ```

2. While loops

   ```bash
   while true
   do
   	echo "nightmare "
   done
   ```
   
