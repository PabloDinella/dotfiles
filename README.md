# dotfiles
My dotfiles

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
