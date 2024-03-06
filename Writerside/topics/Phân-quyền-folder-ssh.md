# Phân quyền folder ssh

## Chạy lệnh để phân quyền lại folder ssh

```
sudo mkdir -p /home/{username}/.ssh
sudo nano /home/{username}/.ssh/authorized_keys
sudo chmod 700 /home/{username}/.ssh
sudo chmod 600 /home/{username}/.ssh/authorized_keys
sudo chown -R {username}:{username} /home/ubuntu/.ssh
```

> Thay username bằng tên người dùng