# Resmi bir Ubuntu imajını kullan
FROM ubuntu:20.04

# Yazar bilgisi ekle
LABEL maintainer="yourname@example.com"

# Çalışma dizinini ayarla
WORKDIR /app

# Uygulama dosyalarını çalışma dizinine kopyala
COPY . .

# Uygulama bağımlılıklarını yükle (örneğin, bir Python uygulaması için)
RUN apt-get update && \
    apt-get install -y python3 && \
    apt-get clean

# Uygulamayı çalıştır
CMD ["python3", "app.py"]