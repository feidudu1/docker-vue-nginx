FROM nginx
# 以下是将文件拷贝到docker里面，每次修改都要重启容器，所以最好删除以下命令，而是将目录挂载到docker
# COPY dist/ /usr/share/nginx/html/
# COPY default.conf /etc/nginx/conf.d/default.conf
