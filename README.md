# dotfiles
My dotfiles/setup instructions

Install neovim: https://www.linode.com/docs/tools-reference/tools/how-to-install-neovim-and-plugins-with-vim-plug/#install-the-neovim-appimage

## Next stuff needs review

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
https://blog.guilhermegarnier.com/2017/12/increasing-productivity-in-tmux-with-a-single-prefix-key/

## .deb files to install with [Eddy](https://github.com/donadigo/eddy)

- https://slack.com/downloads/linux
- https://zoom.us/download#client_4meeting
- https://telegram.org/dl/desktop/linux (if accents are not working, [see](https://github.com/telegramdesktop/tdesktop/issues/1360#issuecomment-254591620))
- https://discordapp.com/api/download?platform=linux&format=deb
- https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
- https://code.visualstudio.com/docs/?dv=linux64_deb

## Self reminders

Here are some workflow hacks that I might forget, or might be interesting for someone reading this:

- <details>
  <summary>It's possible to switch between open windows with Super + 1, Super + 2, etc, so you don't have to cycle through alt + tab until you reach your window</summary>
  
  The order of the apps in the sidebar defines the number of it, in the following case Chrome is Super + 1, Alacritty is Super + 2 and so on
  
  ![image](https://user-images.githubusercontent.com/2482730/89364441-da16d280-d6a8-11ea-81f1-ef231bd07ffe.png)
</details>

- Cool apps for sharing screenshots and gifs of screen (flameshot and peek): https://twitter.com/pablordinella/status/1283101626228711424
