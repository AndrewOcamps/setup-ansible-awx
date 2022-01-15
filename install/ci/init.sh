yum install -y epel-release
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io
systemctl enable --now docker

# RUN NEXUS
mkdir /nexus-data && chown -R 200 /nexus-data
docker run -d -p 8081:8081 --name nexus -v /nexus-data:/nexus-data sonatype/nexus3
