apt-get update -y

echo "Install Java"
apt-get install openjdk-8-jdk -y
java -version

echo "Install Nexus"
useradd -M -d /opt/nexus -s /bin/bash -r nexus
echo "nexus ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/nexus
mkdir /opt/nexus
wget https://sonatype-download.global.ssl.fastly.net/repository/downloads-prod-group/3/nexus-3.29.2-02-unix.tar.gz
tar xzf nexus-3.29.2-02-unix.tar.gz -C /opt/nexus --strip-components=1
chown -R nexus:nexus /opt/nexus

nano /opt/nexus/bin/nexus.vmoptions



```
https://www.howtoforge.com/how-to-install-and-configure-nexus-repository-manager-on-ubuntu-20-04/
```

apt-get install openjdk-8-jdk -y
wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
tar -xf latest-unix.tar.gz
cd nexus-3.61.0-02/bin/
chmod +x nexus
./nexus start




```
docker run -d -p 8081:8081 --name nexus sonatype/nexus3
```
