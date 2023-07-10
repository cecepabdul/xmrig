FROM ubuntu:18.04

# Instal dependensi yang dibutuhkan
RUN apt-get update && apt-get install -y wget tar

# Download dan ekstrak xmrig
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.20.0/xmrig-6.20.0-bionic-x64.tar.gz && \
    tar -xvf xmrig-6.20.0-bionic-x64.tar.gz

# Masuk ke direktori xmrig
WORKDIR /xmrig-6.20.0

# Jalankan xmrig saat container dijalankan
CMD ["./xmrig", "-a", "ghostrider", "--url", "stratum-eu.rplant.xyz:17095", "--tls", "--user", "FBJkSG9UbzhRkzJyDqyEETqJZNn2WmpqP9.x", "--pass", "webpassword=cecepabdul"]
