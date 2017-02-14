yum install m2crypto gcc -y
wget -N --no-check-certificate https://download.libsodium.org/libsodium/releases/LATEST.tar.gz
tar -xzvf libsodium-*.tar.gz
cd libsodium-*
./configure
make && make install
echo "/usr/local/lib" >> /etc/ld.so.conf
ldconfig
