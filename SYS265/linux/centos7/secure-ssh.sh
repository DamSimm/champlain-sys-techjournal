# script file to secure ssh on linux
useradd -m -d /home/$1 -s /bin/bash $1
mkdir /home/$1/.ssh
cp SYS265/linux/public-keys/id_rsa.pub /home/$1/.ssh/authorized_keys
chmod 700 /home/$1/.ssh
chmod 600 /home/$1/.ssh/authorized_keys
chown -R $1:$1 /home/$1/.ssh
