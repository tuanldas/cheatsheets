# Openmediavault

Tham khảo: [https://wiki.omv-extras.org/doku.php](https://wiki.omv-extras.org/doku.php)

## Yêu cầu hệ thống

* Cài đặt bản pios lite
* Sử dụng mạng lan (Không được sử dụng wifi)
* Sử dụng phương thứ đăng nhập khi ssh

## Cài đặt

### Cập nhật hệ điều hành

```Bash
sudo apt-get update

sudo apt-get upgrade -y

wget -O - https://github.com/OpenMediaVault-Plugin-Developers/installScript/raw/master/preinstall | sudo bash
```

Khi hoàn thành thì khởi động lại máy

```Bash
sudo reboot
```

### Cài đặt OVM

```Bash
wget -O - https://github.com/OpenMediaVault-Plugin-Developers/installScript/raw/master/install | sudo bash
```

## Đăng nhập lần đầu

Sử dụng ip ssh để truy cập máy để truy cập web.  
Tài khoản người dùng mặc định username: **admin**, password: **openmediavault**

## Cấu hình wifi

Truy cập: Network > Interfaces > Chọn add > chọn wifi

![pios_openmediavault_add_wifi.png](pios_openmediavault_add_wifi.png)