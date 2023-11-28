# Conditionals

Integer conditions
------------------

| Condition           | Description                                 |
|---------------------|---------------------------------------------|
| `[[ NUM -eq NUM ]]` | <yel>Eq</yel>ual                            |
| `[[ NUM -ne NUM ]]` | <yel>N</yel>ot <yel>e</yel>qual             |
| `[[ NUM -lt NUM ]]` | <yel>L</yel>ess <yel>t</yel>han             |
| `[[ NUM -le NUM ]]` | <yel>L</yel>ess than or <yel>e</yel>qual    |
| `[[ NUM -gt NUM ]]` | <yel>G</yel>reater <yel>t</yel>han          |
| `[[ NUM -ge NUM ]]` | <yel>G</yel>reater than or <yel>e</yel>qual |
| `(( NUM < NUM ))`   | Less than                                   |
| `(( NUM <= NUM ))`  | Less than or equal                          |
| `(( NUM > NUM ))`   | Greater than                                |
| `(( NUM >= NUM ))`  | Greater than or equal                       |

String conditions
------------------

| Condition          | Description                 |
|--------------------|-----------------------------|
| `[[ -z STR ]]`     | Empty string                |
| `[[ -n STR ]]`     | <yel>N</yel>ot empty string |
| `[[ STR == STR ]]` | Equal                       |
| `[[ STR = STR ]]`  | Equal (Same above)          |
| `[[ STR < STR ]]`  | Less than _(ASCII)_         |
| `[[ STR > STR ]]`  | Greater than _(ASCII)_      |
| `[[ STR != STR ]]` | Not Equal                   |
| `[[ STR =~ STR ]]` | Regexp                      |

Example
------------------

### String

```bash
if [[ -z "$string" ]]; then
    echo "String is empty"
elif [[ -n "$string" ]]; then
    echo "String is not empty"
else
    echo "This never happens"
fi
```

### Combinations

```bash
if [[ X && Y ]]; then
    ...
fi
```

### Equal

```bash
if [[ "$A" == "$B" ]]; then
    ...
fi
```

### Regex

```bash
if [[ '1. abc' =~ ([a-z]+) ]]; then
    echo ${BASH_REMATCH[1]}
fi
```

### Smaller

```bash
if (( $a < $b )); then
   echo "$a is smaller than $b"
fi
```

### Exists

```bash
if [[ -e "file.txt" ]]; then
    echo "file exists"
fi
```

File conditions
---------------

| Condition         | Description                            |
|-------------------|----------------------------------------|
| `[[ -e FILE ]]`   | <yel>E</yel>xists                      |
| `[[ -d FILE ]]`   | <yel>D</yel>irectory                   |
| `[[ -f FILE ]]`   | <yel>F</yel>ile                        |
| `[[ -h FILE ]]`   | Symlink                                |
| `[[ -s FILE ]]`   | Size is > 0 bytes                      |
| `[[ -r FILE ]]`   | <yel>R</yel>eadable                    |
| `[[ -w FILE ]]`   | <yel>W</yel>ritable                    |
| `[[ -x FILE ]]`   | Executable                             |
| `[[ f1 -nt f2 ]]` | f1 <yel>n</yel>ewer <yel>t</yel>han f2 |
| `[[ f1 -ot f2 ]]` | f2 <yel>o</yel>lder <yel>t</yel>han f1 |
| `[[ f1 -ef f2 ]]` | Same files                             |

More conditions
---------------

| Condition            | Description          |
|----------------------|----------------------|
| `[[ -o noclobber ]]` | If OPTION is enabled |
| `[[ ! EXPR ]]`       | Not                  |
| `[[ X && Y ]]`       | And                  |
| `[[ X                |                      | Y ]]`       | Or                   |

logical and, or
---------------

```bash
if [ "$1" = 'y' -a $2 -gt 0 ]; then
    echo "yes"
fi

if [ "$1" = 'n' -o $2 -lt 0 ]; then
    echo "no"
fi
```