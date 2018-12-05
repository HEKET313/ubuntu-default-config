# SublimeText 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

#gnome tools
sudo apt install -y gnome-tweaks

sudo apt-get install -y git

# GoogleChrome
sudo apt-get install -y libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome*.deb && rm ./google-chrome*.deb

# KeePassX
sudo add-apt-repository ppa:eugenesan/ppa && sudo apt-get update && sudo apt-get install -y keepassx && sudo add-apt-repository --remove ppa:eugenesan/ppa && sudo apt-get update

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update && sudo apt-get install -y docker-ce
sudo usermod -aG docker $USER

echo "Don't forget log out and log in to apply new docker rights"

# Jetbrains Toolbox
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.12.4481.tar.gz
tar -xvzf jetbrains-toolbox-1.12.4481.tar.gz
sudo mv jetbrains-toolbox*/jetbrains-toolbox /usr/local/bin/jetbrains-toolbox
rm -rf jetbrains-toolbox*

# Golang
sudo apt-get install -y golang-go