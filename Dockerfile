FROM ubuntu:latest

# อัปเดตและติดตั้ง Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# คัดลอกไฟล์การตั้งค่า Nginx ของคุณ
COPY nginx.conf ..

# คัดลอกไฟล์เว็บไซต์
COPY . /var/www/html/

# เปิดพอร์ตที่ต้องการ
EXPOSE 80

# เริ่ม Nginx
CMD ["nginx", "-g", "daemon off;"]
