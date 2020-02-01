# 只将dist打包到docker
FROM nginx
# 以下是将文件拷贝到docker里面，每次修改都要重启容器，所以最好删除以下命令，而是将目录挂载到docker
COPY ./dist /usr/share/nginx/html/
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# 在docker里面打包
# FROM node:13.0.1
# WORKDIR /app
# COPY . /app
# RUN ["npm", "install"]
# RUN ["npm", "run", "build"]

# FROM nginx
# COPY --from=0 /app/dist /usr/share/nginx/html/
# COPY --from=0 /app/nginx/default.conf /etc/nginx/conf.d/default.conf
