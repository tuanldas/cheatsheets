# Arrays

Defining arrays
---------------

```bash
Fruits=('Apple' 'Banana' 'Orange')

Fruits[0]="Apple"
Fruits[1]="Banana"
Fruits[2]="Orange"

ARRAY1=(foo{1..2}) # => foo1 foo2
ARRAY2=({A..D})    # => A B C D

# Merge => foo1 foo2 A B C D
ARRAY3=(${ARRAY1[@]} ${ARRAY2[@]})

# declare construct
declare -a Numbers=(1 2 3)
Numbers+=(4 5) # Append => 1 2 3 4 5
```

Indexing
---------------

| -                  | -             |
|--------------------|---------------|
| `${Fruits[0]}`     | First element |
| `${Fruits[-1]}`    | Last element  |
| `${Fruits[*]}`     | All elements  |
| `${Fruits[@]}`     | All elements  |
| `${#Fruits[@]}`    | Number of all |
| `${#Fruits}`       | Length of 1st |
| `${#Fruits[3]}`    | Length of nth |
| `${Fruits[@]:3:2}` | Range         |
| `${!Fruits[@]}`    | Keys of all   |

Iteration
---------------

```bash
Fruits=('Apple' 'Banana' 'Orange')

for e in "${Fruits[@]}"; do
    echo $e
done
```

With index
---------------

```bash
for i in "${!Fruits[@]}"; do
  printf "%s\t%s\n" "$i" "${Fruits[$i]}"
done

```

Operations
---------------

```bash
Fruits=("${Fruits[@]}" "Watermelon")     # Push
Fruits+=('Watermelon')                   # Also Push
Fruits=( ${Fruits[@]/Ap*/} )             # Remove by regex match
unset Fruits[2]                          # Remove one item
Fruits=("${Fruits[@]}")                  # Duplicate
Fruits=("${Fruits[@]}" "${Veggies[@]}")  # Concatenate
lines=(`cat "logfile"`)                  # Read from file
```

Arrays as arguments
---------------

```bash
function extract()
{
    local -n myarray=$1
    local idx=$2
    echo "${myarray[$idx]}"
}
Fruits=('Apple' 'Banana' 'Orange')
extract Fruits 2     # => Orangle
```
