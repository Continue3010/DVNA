# Damn Vulnerable NodeJS Application

# Damn Vulnerable NodeJS Application
# https://github.com/appsecco/dvna

FROM node:20

LABEL MAINTAINER "Subash SN"

WORKDIR /app

# Sao chép tất cả mã nguồn vào container
COPY . .

# Cài đặt phụ thuộc và cấp quyền cho entrypoint.sh
RUN chmod +x /app/entrypoint.sh && npm install

# Khởi động ứng dụng
CMD ["bash", "/app/entrypoint.sh"]
