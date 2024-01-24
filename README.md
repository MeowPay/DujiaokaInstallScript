# Install Script for [Dujiaoka](https://github.com/assimon/dujiaoka)
# Dujiaoka版本： Aug 21, 2023

搭建独角数卡系统，总是会遇到各种问题，加之php的环境和extensions很复杂，所以写了个脚本方便搭建和后续测试

感谢于docker的隔离性，使用此脚本不会对宿主机环境造成任何影响

## 使用 
如果没有docker环境，请先安装 docker 及 compose 扩展
``` bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

下载 此项目
``` bash
git clone https://github.com/Meowpay/DujiaokaInstallScript.git
cd DujiaokaInstallScript
```
执行安装脚本
``` bash
bash ./install.sh
```
等待执行完毕后，就可以打开你的IP地址，访问崭新的后台界面了

| 名称           | 值                          |
| -------------- | --------------------------- |
| 数据库地址     | mysql                       |
| Mysql端口      | 3306                        |
| 数据库名       | dujiaoka                    |
| 数据库用户名   | root                        |
| 数据库密码     | my-secret-pw                |
| Redis 连接地址 | redis                       |
| Redis 端口     | 6379                        |
| 网站url        | http://域名 或 https://域名 |

## 额外的
### https:
如需开启https -> 删除旧的dujiaoka.conf，去掉conf.d 文件夹里的demo后缀

替换掉conf文件内的域名 及 放置证书至正确位置
### 数据:
mysql存储于 data/mysql

redis存储于 data/redis

dujiaoka 于 dujiaoka

### 有疑问及反馈欢迎联系 [https://t.me/MeowPayCN](https://t.me/MeowPayCN)