# Week4 Shell Script

**Tutos:** 

[UCB: Sysadmin Decal](https://decal.ocf.berkeley.edu/) (with slides and .mp4 recording!)

[Bash Guide for Beginners](https://tldp.org/LDP/Bash-Beginners-Guide/html/)



## Bash Grammar

Bash is a **shell** and also a programming language.

To run a bash scripts(usually .sh file):

`bash /path/to/script` OR

```bash
chmod+x /path/to/script
./path/to/script

# requires shebang
```

**Shebang** is a special comment at the beginning of a script, specifies that the file is a script and calls a certain interpreter. 

A shebang in shell: `#!/bin/bash`



### Variables

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



### Conditionals

```bash
[ 0 -lt 1 ] && [ 0 -gt 1];
```

- Conditional expressions are always in `[]`

- signs:

  - `-eq`  ==
  - `-ne` !=
  - `-gt` >
  - `-ge` >=
  - `-lt` <
  - `-le` <=

- boolean oprators:

  - `&&` and
  - `||` or

- In `[]`, `-a` for and, `-o` for or :

  ```bash
  [ 0 -lt 1 -a 0 -gt 1];
  ```



#### if-elif-else

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



### Loops

#### For loops

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

#### While loops

```bash
while true
do
	echo "nightmare "
done
```



## Lire un exemple

```bash
#!/usr/bin/bash
if [ $# -ne 1 ]
then
	echo "ce programme demande un argument"
		exit
fi

FICHIER_URLS=$1
OK=0
NOK=0

while read -r LINE ;
do
	echo "la ligne : $LINE"
	if [[ $LINE =∼ ^https?:// ]]
	then
		echo "ressemble à une URL valide"
		OK=$( expr $OK + 1)
	else
		echo "ne ressemble pas à une URL valide"
		NOK=$( expr $NOK + 1)
	fi
done < $FICHIER_URLS

echo "$OK URLs et $NOK lignes douteuses"
```



**décrire son fonctionnement :**

1. Tout d'abord, avec `$#`, vérifier si le nombre de paramètres est égal à `1`. Si ce n'est pas le cas, afficher un message demandant à l'utilisateur de fournir un paramètre.

2. Définir trois variables. La variable `FICHIER_URLS` correspond au paramètre fourni par l'utilisateur, c'est-à-dire un fichier texte contenant des URLs. Les variables `OK` et `NOK` sont utilisées pour compter les URLs valides et invalides respectivement.

3. Utiliser une boucle `while` pour vérifier si les URLs fournies par l'utilisateur sont valides. Pour chaque ligne lue du fichier, stocker la ligne dans une variable `LINE`, puis utiliser une expression régulière pour vérifier si `LINE` commence par `http(s)://`. Si c'est le cas, l'URL est considérée comme valide, sinon elle est considérée comme invalide.

4. Enfin, informer l'utilisateur du nombre d'URLs valides et invalides.
