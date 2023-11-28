# Getting Started

hello.sh
------------

```bash
#!/bin/bash

VAR="world"
echo "Hello $VAR!" # => Hello world!
```

Execute the script

```shell script
$ bash hello.sh
```

Variables
------------

```bash
NAME="John"

echo ${NAME}    # => John (Variables)
echo $NAME      # => John (Variables)
echo "$NAME"    # => John (Variables)
echo '$NAME'    # => $NAME (Exact string)
echo "${NAME}!" # => John! (Variables)

NAME = "John"   # => Error (about space)
```

Comments

```bash
# This is an inline Bash comment.
```

```bash
: '
This is a
very neat comment
in bash
'
```

Multi-line comments use `:'` to open and `'` to close

Arguments
------------

| Expression  | Description                           |
|-------------|---------------------------------------|
| `$1` … `$9` | Parameter 1 ... 9                     |
| `$0`        | Name of the script itself             |
| `$1`        | First argument                        |
| `${10}`     | Positional parameter 10               |
| `$#`        | Number of arguments                   |
| `$$`        | Process id of the shell               |
| `$*`        | All arguments                         |
| `$@`        | All arguments, starting from first    |
| `$-`        | Current options                       |
| `$_`        | Last argument of the previous command |

See: [Special parameters](http://wiki.bash-hackers.org/syntax/shellvars#special_parameters_and_shell_variables)

Functions

```bash
get_name() {
    echo "John"
}

echo "You are $(get_name)"
```

See: [Functions](Bash-Functions.md)

Conditionals
------------

```bash
if [[ -z "$string" ]]; then
    echo "String is empty"
elif [[ -n "$string" ]]; then
    echo "String is not empty"
fi
```

See: [Conditionals](Bash-Conditionals.md)

Brace expansion

```bash
echo {A,B}.js
```

---

| Expression | Description         |
|------------|---------------------|
| `{A,B}`    | Same as `A B`       |
| `{A,B}.js` | Same as `A.js B.js` |
| `{1..5}`   | Same as `1 2 3 4 5` |

See: [Brace expansion](http://wiki.bash-hackers.org/syntax/expansion/brace)

Shell execution
------------

```bash
# => I'm in /path/of/current
echo "I'm in $(PWD)"

# Same as:
echo "I'm in `pwd`"
```

See: [Command substitution](http://wiki.bash-hackers.org/syntax/expansion/cmdsubst)

