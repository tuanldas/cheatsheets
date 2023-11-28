# Tmux

Định nghĩa trên trang [https://tmux.github.io/](https://tmux.github.io/) có nói rằng: Tmux là một Terminal Multiplexer - "bộ ghép kênh". Nó cho phép bạn chuyển qua lại giữa các chương trình độc lập ngay trên một terminal, tách các chương trình ra một terminal riêng mà vẫn giữ được trạng thái hoạt động của chúng. Và còn làm được nhiều việc hơn thế nữa...

Tạo một session mới
--------
Bắt đầu một session mới
```Bash
tmux
```
Bắt đầu một session được đặt tên mới
```shell script
tmux new -s myname
```
Hiển thị tất cả các session
```shell script
tmux ls
```
 
Attach session
--------
Attach session cuối cùng
```shell script
tmux a
```
Attach session có tên
```shell script
tmux a -t myname
```

Kill session
--------
Kill a session by name
```shell script
$ tmux kill-ses -t myname
```
Kill sessions but the current
```shell script
$ tmux kill-ses -a
```
Kill sessions but 'myname'
```shell script
$ tmux kill-ses -a -t myname
```

Tmux help
--------
```shell script
$ tmux info
```

Config
--------
Reload config
```shell script
$ tmux source-file ~/.tmux.conf
```
Show config
```shell script
$ tmux show-options -g
```
