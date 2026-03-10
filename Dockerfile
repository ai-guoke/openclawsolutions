FROM nginx:alpine

# 移除默认页面
RUN rm -rf /usr/share/nginx/html/*

# 复制自定义 Nginx 配置
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 复制网站文件
COPY index.html /usr/share/nginx/html/

# 暴露端口
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
