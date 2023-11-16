git clone https://github.com/assimon/dujiaoka.git
chmod -R 777 dujiaoka
# docker run --rm --interactive --tty --volume ./dujiaoka:/app composer update
# docker run --rm --interactive --tty --volume ./dujiaoka:/app composer install
which docker-compose && {
    docker-compose up -d
    while true; do
        if [ $(docker ps | grep DujiaokaMysql | wc -l) -eq 1 ]; then
            break
        fi
    done
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
            if [ $(docker ps | grep DujiaokaMysql | wc -l) -eq 1 ]; then
                break
            fi
        done
    }
}
