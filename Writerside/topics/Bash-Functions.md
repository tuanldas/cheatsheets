# Functions

Defining functions
----------------

```bash
myfunc() {
    echo "hello $1"
}
```

```bash
# Same as above (alternate syntax)
function myfunc() {
    echo "hello $1"
}
```

```bash
myfunc "John"
```

Returning values
----------------

```bash
myfunc() {
    local myresult='some value'
    echo $myresult
}
```

```bash
result="$(myfunc)"
```

Raising errors
----------------

```bash
myfunc() {
    return 1
}
```

```bash
if myfunc; then
    echo "success"
else
    echo "failure"
fi
```