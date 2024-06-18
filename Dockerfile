# 使用 nginx 官方的基礎映像檔
FROM nginx

# 複製你的 default.conf 設定檔到容器內的 /etc/nginx/conf.d/ 資料夾
COPY default.conf /etc/nginx/conf.d/
COPY test.sh /test.sh

RUN /test.sh

# 如果你有其他需要複製到容器內的檔案，可以在這裡使用 COPY 指令

# 開放容器的 80 port
EXPOSE 80

# 容器啟動後執行的指令
CMD ["nginx", "-g", "daemon off;"]