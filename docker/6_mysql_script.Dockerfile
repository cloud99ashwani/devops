FROM mysql
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE company
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup

COPY ./mysql/script/ /docker-entrypoint-initdb.d/



# docker build --tag mysql --file 6_mysql_script.Dockerfile .
# docker run -dp 3306:3306 mysql 
# docker run -it --rm mysql mysql -h172.17.0.2 -uroot -proot



# Same will be done with docker run command
# docker run -d -p 3306:3306 --name mysql \
# -v ./mysql/script:/docker-entrypoint-initdb.d/ \
# -e MYSQL_ROOT_PASSWORD=root \
# -e MYSQL_DATABASE=company \
# mysql