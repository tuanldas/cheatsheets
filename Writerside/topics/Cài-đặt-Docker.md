# Cài đặt Docker

## Cập nhật danh sách các gói hiện có

```
sudo apt update -y && sudo apt upgrade -y
```

## Cài đặt các gói bắt buộc

```
sudo apt install -y	  apt-transport-https ca-certificates curl software-properties-common
```

## Thêm khóa GPG vào hệ thống

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

## Cài đặt docker

```
sudo apt update

sudo apt-cache policy docker-ce

sudo apt install docker-ce -y
```

## Cấp quyền chạy lệnh docker không cần sudo cho các user

```
sudo usermod -aG docker {username}
```

## Khời động lại máy

```
sudo reboot
```

> username: tên user cần cấp quyền