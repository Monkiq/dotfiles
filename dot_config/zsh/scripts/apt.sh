sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

sudo apt update && apt-get install -y curl git mercurial make binutils bison gcc build-essential
sudo apt-get install zsh

sh -c "$(curl -fsLS get.chezmoi.io)" >/dev/null
