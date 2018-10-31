sudo apt update -y && sudo apt upgrade -y

sudo apt install git zsh -y

# install chrome
sudo wget -O - https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /tmp/chrome.deb
sudo dpkg -i /tmp/chrome.deb
sudo apt --fix-broken install #see below
# after installing chrome I got unmet deps error when trying to install anything else with apt:
# google-chrome-stable : Depends: fonts-liberation but it is not going to be installed
# sudo apt --fix-broken install fixed the problem

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
