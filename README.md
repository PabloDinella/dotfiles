# dotfiles
My dotfiles

## Run Ubuntu 18.04 post install

```
sh -c "$(wget https://raw.githubusercontent.com/PabloDinella/dotfiles/master/ubuntu_post_install.sh -O -)"
``` 

**Internet Explorer 11 for VirtualBox**

(2Gb+)

```
wget https://az412801.vo.msecnd.net/vhd/VMBuild_20141027/VirtualBox/IE11/Windows/IE11.Win8.1.For.Windows.VirtualBox.zip
```

**Set screensavers**

``` 
sudo dnf install xscreensaver mp && \
wget https://github.com/PabloDinella/dotfiles/blob/master/.xscreensaver -O ${HOME}/.xscreensaver && \
wget https://github.com/PabloDinella/dotfiles/blob/master/peixes.mp4 -O ${HOME}/videos/peixes.mp4 && \
wget https://github.com/PabloDinella/dotfiles/blob/master/periquito.mp4 -O ${HOME}/videos/periquito.mp4 && \
xscreensaver-demo
```

## Ajeitar depois

```
git config --global user.email "pablo.dinella@gmail.com"
git config --global user.name "Pablo R. Dinella"
# Muda o alt-click que move a janela para super-click (evitar conflito com o 'selecionar objeto por baixo' no inkscape
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier "<Super>"

```

## .deb files to install with [Eddy](https://github.com/donadigo/eddy)

- https://slack.com/downloads/linux
- https://telegram.org/dl/desktop/linux (if accents are not working, [see](https://github.com/telegramdesktop/tdesktop/issues/1360#issuecomment-254591620)
- https://discordapp.com/api/download?platform=linux&format=deb
- https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
- https://code.visualstudio.com/docs/?dv=linux64_deb
