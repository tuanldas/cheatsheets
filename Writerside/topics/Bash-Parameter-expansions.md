# Bash Parameter expansions

Syntax
----------

| Code              | Description         |
|-------------------|---------------------|
| `${FOO%suffix}`   | Remove suffix       |
| `${FOO#prefix}`   | Remove prefix       |
| `${FOO%%suffix}`  | Remove long suffix  |
| `${FOO##prefix}`  | Remove long prefix  |
| `${FOO/from/to}`  | Replace first match |
| `${FOO//from/to}` | Replace all         |
| `${FOO/%from/to}` | Replace suffix      |
| `${FOO/#from/to}` | Replace prefix      |

Substrings
----------

| Expression      | Description                    |
|-----------------|--------------------------------|
| `${FOO:0:3}`    | Substring _(position, length)_ |
| `${FOO:(-3):3}` | Substring from the right       |

Length
----------

| Expression | Description      |
|------------|------------------|
| `${#FOO}`  | Length of `$FOO` |

Default values
----------

| Expression        | Description                              |
|-------------------|------------------------------------------|
| `${FOO:-val}`     | `$FOO`, or `val` if unset                |
| `${FOO:=val}`     | Set `$FOO` to `val` if unset             |
| `${FOO:+val}`     | `val` if `$FOO` is set                   |
| `${FOO:?message}` | Show message and exit if `$FOO` is unset |

Substitution
----------

```bash
echo ${food:-Cake}  #=> $food or "Cake"
```

```bash
STR="/path/to/foo.cpp"
echo ${STR%.cpp}    # /path/to/foo
echo ${STR%.cpp}.o  # /path/to/foo.o
echo ${STR%/*}      # /path/to

echo ${STR##*.}     # cpp (extension)
echo ${STR##*/}     # foo.cpp (basepath)

echo ${STR#*/}      # path/to/foo.cpp
echo ${STR##*/}     # foo.cpp

echo ${STR/foo/bar} # /path/to/bar.cpp
```

Slicing
----------

```bash
name="John"
echo ${name}           # => John
echo ${name:0:2}       # => Jo
echo ${name::2}        # => Jo
echo ${name::-1}       # => Joh
echo ${name:(-1)}      # => n
echo ${name:(-2)}      # => hn
echo ${name:(-2):2}    # => hn

length=2
echo ${name:0:length}  # => Jo
```

See: [Parameter expansion](http://wiki.bash-hackers.org/syntax/pe)

basepath & dirpath
----------

```bash
SRC="/path/to/foo.cpp"
```

```bash
BASEPATH=${SRC##*/}   
echo $BASEPATH  # => "foo.cpp"


DIRPATH=${SRC%$BASEPATH}
echo $DIRPATH   # => "/path/to/"
```

Transform
----------
```bash
STR="HELLO WORLD!"
echo ${STR,}   # => hELLO WORLD!
echo ${STR,,}  # => hello world!

STR="hello world!"
echo ${STR^}   # => Hello world!
echo ${STR^^}  # => HELLO WORLD!

ARR=(hello World)
echo "${ARR[@],}" # => hello world
echo "${ARR[@]^}" # => Hello World
```

