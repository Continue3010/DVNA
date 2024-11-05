#!/bin/bash

# Chờ đợi cơ sở dữ liệu khởi động (nếu cần)
./wait-for-it.sh db:5432 --timeout=30 --strict -- echo "Database is up"

# Khởi động ứng dụng Node.js
npm start
