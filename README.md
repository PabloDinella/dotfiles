# dotfiles
My dotfiles

## Set screensavers

``` 
sudo dnf install xscreensaver mp && \
wget https://github.com/PabloDinella/dotfiles/blob/master/.xscreensaver -O ${HOME}/.xscreensaver && \
wget https://github.com/PabloDinella/dotfiles/blob/master/peixes.mp4 -O ${HOME}/videos/peixes.mp4 && \
wget https://github.com/PabloDinella/dotfiles/blob/master/periquito.mp4 -O ${HOME}/videos/periquito.mp4 && \
xscreensaver-demo
```
