#!/bin/bash
#################### 解析参数 ####################
IMAGE=$1
VERSION=$2
HOSTS=$3
DOCKER_REGISTRY_HOST=192.168.1.205
DOCKER_REGISTRY_PORT=5000

#################################################
if [ $IMAGE = "nginx" ]
then
  if [ -z $VERSION ]
  then
      echo '请输入版本号!'
      exit 0
  fi
  #镜像
  NGINX_IMAGE_NAME=${DOCKER_REGISTRY_HOST}:${DOCKER_REGISTRY_PORT}/nginx
  NGINX_CONTAINER_NAME=${DOCKER_REGISTRY_HOST}-${DOCKER_REGISTRY_PORT}-nginx
  NGINX_IMAGE_VERSION=$VERSION
  #查找本地镜像，如果本地不存在对应版本的镜像，那么创建新的镜像文件
  if [ $(docker images | grep "${NGINX_IMAGE_NAME}\s*${NGINX_IMAGE_VERSION}") = "" ]
  then
    #创建Docker镜像
    docker build -t ${NGINX_IMAGE_NAME}:${NGINX_IMAGE_VERSION} -f ${DOCKER_FILES}/nginx ${BASE_PATH}/
    #push到远端仓储
    docker push ${NGINX_IMAGE_NAME}:${NGINX_IMAGE_VERSION}
  fi
  #部署到服务器
  NGINX_HOSTS=${NGINX_HOSTS//,/ }
  for host in ${NGINX_HOSTS[@]};
  do
      ssh -t root@$host "if [[ \$(docker ps -a | grep ${NGINX_CONTAINER_NAME}) != '' ]]; \
                         then \
                         docker rm -f ${NGINX_CONTAINER_NAME}; \
                         fi \
                         && \
                         docker run --name ${NGINX_CONTAINER_NAME} -d -v /var/log/nginx/:/var/log/nginx/ -p 80:80 ${NGINX_IMAGE_NAME}:${NGINX_IMAGE_VERSION}"
  done
fi
