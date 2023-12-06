# Git

Tạo một repository
-------------------
Tạo một repository dưới local

``` shell script
git init [project name]
```

{prompt="$"}

Clone a repository

``` shell script
git clone git_url
```

{prompt="$"}

Clone một repository vào một thư mục

``` shell script
git clone git_url my_directory
```

{prompt="$"}

Kiểm tra các thay đổi
--------

Hiển thị các file đã thay đổi

```Bash
git status
```

{prompt="$"}

Thêm file đã thay đổi vào chỉ mục (index) git để sẵn sàng commit

```Bash
git add [file]
```

{prompt="$"}

Thêm tất cả các file đã thay đổi vào chỉ mục (index) git để sẵn sàng commit

```Bash
git add .
```

{prompt="$"}

Commit tất cả các thay đổi vào lịch sử

```Bash
git commit -m "commit message"
```

{prompt="$"}

Hủy một file đã được thêm ( git add ) nhưng vẫn giữ lại các thay đổi

```Bash
git reset [file]
```

{prompt="$"}

Revert tất cả các thay đổi về lần cuối commit

```Bash
git reset --hard
```

{prompt="$"}

Xem với những gì bị thay đổi khi chưa add

```Bash
git diff
```

{prompt="$"}

Xem với những gì bị thay đổi nhưng chưa được commit

```Bash
git diff --staged
```

{prompt="$"}

Áp dụng các commit của nhánh hiện tại vào một cam kết được chỉ định

```Bash
git rebase [branch]
```

{prompt="$"}

Configuration
-------------

Tên sẽ được gắn với các commit và tags của bạn

```Bash
git config --global user.name "name"
```

{prompt="$"}

Email sẽ được gắn với các commit và tags của bạn

```Bash
git config --global user.email "email"
```

{prompt="$"}

Branches
--------

Liệt kê tất cả các nhánh

```Bash
git branch
```

{prompt="$"}

Liệt kê tất cả các nhánh cả ở local và remote

```Bash
git branch -av
```

{prompt="$"}

Chuyển nhánh hiện tại sang `my_branch` và cập nhật lại thư mục làm việc

```Bash
git checkout my_branch
```

{prompt="$"}

Tạo một nhánh mới

```Bash
git checkout -b new_branch
```

{prompt="$"}

Xóa một nhánh

```Bash
git branch -d my_branch
```

{prompt="$"}

Merge branchA vào branchB

```Bash
git checkout branchB
git merge branchA
```

{prompt="$"}

Quản lý repository
------------------

Hiển thị lịch sử commit cho nhánh hiện tại

```Bash
git log
```

{prompt="$"}

Hiển thị commit trên branchA mà không có trên branchB

```Bash
git log branchB..branchA
```

{prompt="$"}

Hiển thị các commit thay đổi file, kể cả đổi tên file

```Bash
git log --follow [file]
```

{prompt="$"}

Xem sự khác biệt giữa nhánh A và không có trong nhánh B

```Bash
git diff branchB...branchA
```

{prompt="$"}

Synchronize
-----------

Tìm và nạp tất cả các nhánh từ remote

```Bash
git fetch [alias]
```

{prompt="$"}

Hợp nhất một nhánh từ xa vào nhánh hiện tại

```Bash
git merge [alias]/[branch]
# No fast-forward
git merge --no-ff [alias]/[branch]
# Only fast-forward
git merge --ff-only [alias]/[branch]
```

{prompt="$"}

Đẩy nhánh tại local lên remote repository

```Bash
git push [alias] [branch]
```

{prompt="$"}

Tìm và hợp nhất tất cả các commit từ remote branch

```Bash
git pull
```

{prompt="$"}

Chỉ hợp nhất một cam kết cụ thể từ một nhánh khác vào nhánh hiện tại

```Bash
git cherry-pick [commit_id]
```

{prompt="$"}

Remote
------

Thêm git url làm alias

```Bash
git remote add [alias] [url]
```

{prompt="$"}

Hiển thị tên của các remote repository

```Bash
git remote
```

{prompt="$"}

Hiển thị tên và url của các remote repository

```Bash
git remote -v
```

{prompt="$"}

Xóa một remote repository

```Bash
git remote rm [remote repo name]
```

{prompt="$"}

Thay đổi url của một git repo

```Bash
git remote set-url origin [git_url]
```

{prompt="$"}


Ignoring Files
--------------

```
/logs/*

# "!" means don't ignore 
!logs/.gitkeep

/# Ignore Mac system files
.DS_store

# Ignore node_modules folder
node_modules

# Ignore SASS config files
.sass-cache
```

File `.gitignore` dùng để chỉ định các tệp hoặc folder cần bỏ qua



Git Tricks
----------

### Đổi tên nhánh

- #### Đổi tên thành new_name
    ```
    git branch -m <new_name>
    ```
  {prompt="$"}
- #### Push and reset
    ```
    git push origin -u <new_name>
    ```
  {prompt="$"}
- #### Xóa nhánh trên remote
    ```
    git push origin --delete <old>
    ```
  {prompt="$"}

### Log

Tìm kiếm thay đổi theo nội dung

```
git log -S'<a term in the source>'
```

{prompt="$"}

Hiển thị thay đổi của tệp theo thời gian cho file cụ thể

```
git log -p <file_name>
```

{prompt="$"}

### Rewriting history

Viết lại nội dung commit cuối cùng

```shell script
$ git commit --amend -m "new message"
```

Git Flow
--------

# Cài đặt

Cài đặt git flow bằng home brew

```
brew install git-flow-avh
```