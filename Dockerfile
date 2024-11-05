# Chọn phiên bản Node.js
FROM node:21

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép package.json và package-lock.json (nếu có)
COPY package*.json ./

# Cài đặt các phụ thuộc
RUN npm install

# Sao chép toàn bộ mã nguồn vào thư mục làm việc
COPY . .

# Mở cổng ứng dụng
EXPOSE 9090

# Lệnh để khởi động ứng dụng
CMD ["node", "server.js"]
