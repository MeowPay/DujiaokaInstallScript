# Dujiaoka版本： Aug 21, 2023

support() {
    cat <<\EOF
安装完成
打开你的网址，并填写

数据库地址 	  mysql
Mysql端口    3306
数据库名 	  dujiaoka
数据库用户名   root
数据库密码     my-secret-pw
Redis连接地址  redis
Redis端口     6379
网站url 	  http://域名 或 https://域名
EOF
}

git clone https://github.com/assimon/dujiaoka.git
cd dujiaoka
git reset --hard 6bf5f3d5fdc00f94afdceedeb1ec1da5a99e5884
cd -
chmod -x install.sh
chmod -R 777 dujiaoka
which docker-compose && {
    docker-compose up -d
    while true; do
        docker-compose ps | grep php-compose && {
            echo "php-compose is running"
            sleep 5
            continue
        }
        break
    done
    support
} || {
    echo 无法找到docker-compose命令，尝试 docker compose
    which docker && {
        docker compose up -d || {
            echo 无法找到docker compose命令
            echo 请安装docker-compose或docker compose 扩展 Github: https://github.com/docker/compose
            echo 脚本已经停止运行
            exit 1
        }
        while true; do
            docker compose ps | grep php-compose && {
                echo "php-compose is running"
                sleep 5
                continue
            }
            break
        done
        support
    }
}
