# Gunakan image dasar Node.js yang sesuai (sesuaikan versi dengan yang Anda perlukan)
FROM node:20

# Set working directory dalam container
WORKDIR /usr/index

# Salin package.json dan package-lock.json (jika ada) ke dalam container
COPY package*.json ./

# Install dependencies aplikasi
RUN npm install

# Salin seluruh kode aplikasi ke dalam container
COPY . .

# Expose port aplikasi
EXPOSE 8080

# Tentukan perintah yang dijalankan saat container dimulai
CMD ["npm", "start"]
