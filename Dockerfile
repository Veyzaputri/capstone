# Gunakan Node.js sebagai base image
FROM node:18

# Set environment variables
ENV NODE_ENV=production

# Buat direktori kerja dalam container
WORKDIR /usr/src/app

# Salin file package.json dan package-lock.json (jika ada)
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Salin seluruh kode aplikasi ke direktori kerja container
COPY . .

# Salin file konfigurasi untuk Google Cloud
COPY serviceAccountKey.json /usr/src/app/serviceAccountKey.json

# Ekspose port aplikasi
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "start"]
