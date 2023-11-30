# Grep

Command
-----
Tìm kiếm và hiển thị dòng có ký tự

```Bash
grep [options] search_string
```

{prompt="$"}

Tìm kiếm mội chuỗi ký tự trong một file

```Bash
grep [options] search_string path/to/file
```

{prompt="$"}

In các dòng trong myfile.txt chứa chuỗi "mellon"

```shell script
grep 'mellon' myfile.txt
```

{prompt="$"}

Option
---------------

| Option | Ví dụ                                     | Hành động                                            |
|--------|-------------------------------------------|------------------------------------------------------|
| `-i`   | grep -i ^DA demo.txt                      | Forgets about case sensitivity                       |
| `-w`   | grep -w "of" demo.txt                     | Search only for the full word                        |
| `-A`   | grep -A 3 'Exception' error.log           | Display 3 lines after matching string                |
| `-B`   | grep -B 4 'Exception' error.log           | Display 4 lines before matching string               |
| `-C`   | grep -C 5 'Exception' error.log           | Display 5 lines around matching string               |
| `-r`   | grep -r 'cheatsheets.zip' /var/log/nginx/ | Recursive search _(within subdirs)_                  |
| `-v`   | grep -v 'warning' /var/log/syslog         | Return all lines which don't match the pattern       |
| `-e`   | grep -e '^al' filename                    | Use regex _(lines starting with 'al')_               |
| `-E`   | grep -E 'ja(s\|cks)on' filename           | Extended regex _(lines containing jason or jackson)_ |
| `-c`   | grep -c 'error' /var/log/syslog           | Count the number of matches                          |
| `-l`   | grep -l 'robot' /var/log/*                | Print the name of the file(s) of matches             |
| `-o`   | grep -o search_string filename            | Only show the matching part of the string            |
| `-n`   | grep -n "go" demo.txt                     | Show the line numbers of the matches                 |

Grep regular expressions
---------------

### Wildcards

| -   | -                                      |
|-----|----------------------------------------|
| .   | Bất kỳ ký tự nào.                      |
| `?` | Tùy chọn và chỉ có thể xảy ra một lần. |
| `*` | Tùy chọn và có thể xảy ra nhiều lần.   |
| `+` | Bắt buộc và có thể xảy ra nhiều lần.   |

### Vị trí tìm kiếm

|      |             |
|------|-------------|
| `^`  | Đầu dòng.   |
| `$`  | Cuối dòng.  |
| `^$` | Dòng trống. |
| `\<` | Bắt đầu từ. |
| `\>` | Kết thứ từ. |


