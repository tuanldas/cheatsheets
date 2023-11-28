# Loop

Basic for loop
--------------

```bash
for i in /etc/rc.*; do
    echo $i
done
```

C-like for loop
--------------

```bash
for ((i = 0 ; i < 100 ; i++)); do
    echo $i
done
```

Ranges {.row-span-2}
--------------

```bash
for i in {1..5}; do
    echo "Welcome $i"
done
```

With step size
--------------

```bash
for i in {5..50..5}; do
    echo "Welcome $i"
done
```

Auto increment
-------------

```bash
i=1
while [[ $i -lt 4 ]]; do
    echo "Number: $i"
    ((i++))
done
```

Auto decrement
-------------

```bash
i=3
while [[ $i -gt 0 ]]; do
    echo "Number: $i"
    ((i--))
done
```

Continue
-------------

```bash {data=3,5}
for number in $(seq 1 3); do
    if [[ $number == 2 ]]; then
        continue;
    fi
    echo "$number"
done
```

Break
-------------

```bash
for number in $(seq 1 3); do
    if [[ $number == 2 ]]; then
        # Skip entire rest of loop.
        break;
    fi
    # This will only print 1
    echo "$number"
done
```

Until
-------------

```bash
count=0
until [ $count -gt 10 ]; do
    echo "$count"
    ((count++))
done
```

Forever
-------------

```bash
while true; do
    # here is some code.
done
```

Forever (shorthand)
-------------

```bash
while :; do
    # here is some code.
done
```

Reading lines
-------------

```bash
cat file.txt | while read line; do
    echo $line
done
```
