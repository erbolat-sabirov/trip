FROM mysql:8.0

# Копирование конфигурации MySQL
COPY ../../docker/mysql/my.cnf /etc/mysql/my.cnf

COPY ../../docker/mysql/init.sql /docker-entrypoint-initdb.d/
