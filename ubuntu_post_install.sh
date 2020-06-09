sudo apt update -y && sudo apt upgrade -y

add-apt-repository ppa:mmstick76/alacritty

sudo apt update

sudo apt install -y \
git \
fish \
vim \
curl \
terminator \
alacritty

# setup fish shell as default, install fisher and omf, install spacefish prompt
chsh -s $(which fish)
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
curl -L https://get.oh-my.fish | fish
fisher add matchai/spacefish

# disable caps lock
# source http://bartssolutions.blogspot.com/2017/10/disable-caps-lock-in-ubuntu-1604.html
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:none']"

# install chrome
sudo wget -O - https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /tmp/chrome.deb
sudo dpkg -i /tmp/chrome.deb
sudo apt --fix-broken install #see below
# after installing chrome I got unmet deps error when trying to install anything else with apt:
# google-chrome-stable : Depends: fonts-liberation but it is not going to be installed
# sudo apt --fix-broken install fixed the problem

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install powerline theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/powerlevel9k
echo 'source  ~/powerlevel9k/powerlevel9k.zsh-theme' >> ~/.zshrc

# install powerline fonts
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.local/share/fonts/
mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts/
mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# install zsh auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
echo "export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
" >> ~/.zshrc
source ~/.zshrc

# install yarn
# https://stackoverflow.com/questions/40025890/why-wouldnt-i-use-npm-to-install-yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install --no-install-recommends yarn

# Docker installation
# https://docs.docker.com/install/linux/docker-ce/ubuntu/
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce

sudo groupadd docker

sudo usermod -aG docker $USER

# docker-compose installation
# https://docs.docker.com/compose/install/
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

