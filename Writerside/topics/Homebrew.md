# Homebrew

Cài đặt
--------

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Commands
--------

|                                  |                                                     |
|----------------------------------|-----------------------------------------------------|
| ``` brew install git ```         | Cài đặt một package                                 |
| ``` brew uninstall git ```       | Gỡ cài đặt một package                              |
| ``` brew upgrade git ```         | Cập nhật package                                    |
| ``` brew unlink git ```          | Unlink                                              |
| ``` brew link git ```            | Link                                                |
| ``` brew switch git  1.0.0 ```   | Thay đổi package version                            |
| ``` brew list --versions git ``` | Liệt kê tất cả các phiên bản đã cài đặt của package |

Help
--------

Xem version homebrew

````
brew --version
````

Print Help Information

````
brew help
````

Print Help Info for a brew command

````
brew help <sub-command>
````

Kiểm tra hệ thống để phát hiện các vấn đề tiềm ẩn.

````
brew doctor
````

Cập nhật
--------
Cập nhật phiên bản mới nhất của brew

```
brew update
```

Kiểm tra phiên bản các package đã cài đặt

```
brew outdated
```

Cập nhật tất cả các package cũ

```
brew upgrade
```

Cập nhật một package được chỉ định

```
brew upgrade <formula>
```

Đặt cờ không được cập nhật cho package

```
brew pin <formula>
```

Cho phép cập nhật package

```
brew unpin <formula>
```

Repositories
--------
Liệt kê tất cả các kho lưu trữ

```
brew tap
```

'Tap' vào kho lưu trữ công thức từ Github sử dụng https cho tap https://github.com/user/homebrew-repo

```
brew tap <user/repo>
```

'Tap' kho lưu trữ công thức từ URL được chỉ định

```
brew tap <user/repo> <URL>
```

Xóa 'tap' ra khỏi kho lưu trữ

```
brew untap <user/repo>
```

Cask
--------
Tap the Cask repository from Github.

```
brew tap homebrew/cask
```

List all the installed casks .

```
brew cask list
```

Search all known casks based on the substring text.

```
brew search <text>
```

Install the given cask.

```
brew cask install <cask>
```

Reinstalls the given Cask

```
brew cask reinstall <cask>
```

Uninstall the given cask.

```
brew cask uninstall <cask>
```

Search, Install, Remove
--------
Liệt kê tất cả các package được cài đặt.

```
brew list
```

Tìm kiếm một package bằng tên của package

```
brew search <text>
```

Xem thông tin package

```
brew info <formula>
```

Cài đặt một package

```
brew install <formula>
```

Gỡ cài đặt một package

```
brew uninstall <formula>
```

Cleanup
--------
Loại bỏ các version cũ của package đã cài đặt

```
brew cleanup
```

Loại bỏ các version cũ của package được chỉ định

```
brew cleanup <formula>
```

Hiển thị thông tin các version bị xoá

```
brew cleanup -n
```
