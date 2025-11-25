# WIP

- fish
- fisher
- fisher install lewisacidic/fish-git-abbr

```
git config --global user.email "pablo.dinella@gmail.com"
git config --global user.name "PabloDinella"
```

ghostty dead keys
https://github.com/ghostty-org/ghostty/discussions/8899#discussioncomment-14717979

## Ubuntu 24.04

1. Update the system
    ```
    sudo apt update
    sudo apt upgrade
    ```

2. Install Brave
    ```
    sudo apt install curl
    curl -fsS https://dl.brave.com/install.sh | sh
    ```

3. Install KDEConnect and send the Brave sync code over it from another device
4. Install fish and make it default shell
    ```
    sudo apt install fish
    chsh -s /usr/bin/fish
    ```
    _For it to take effect, I had to restart._

5. Download WezTerm and move it to ~/bin
    ```
    curl -LO https://github.com/wez/wezterm/releases/download/20240203-110809-5046fc22/WezTerm-20240203-110809-5046fc22-Ubuntu20.04.AppImage
    chmod +x WezTerm-20240203-110809-5046fc22-Ubuntu20.04.AppImage
    mkdir ~/bin
    mv ./WezTerm-20240203-110809-5046fc22-Ubuntu20.04.AppImage ~/bin/wezterm
    ```

6. Setup FUSE for running Appimages
    ```
    sudo add-apt-repository universe
    sudo apt install libfuse2t64
    ```

7. Add ~/bin to path
    ```
    fish_add_path ~/bin/
    ```

8. Install AppImageLauncher
   
    ```
    curl "https://api.github.com/repos/TheAssassin/AppImageLauncher/releases/latest" \
     | jq .assets[].browser_download_url \
     | grep amd64.deb \
     | grep bionic \
     | xargs -I{} curl -L {} -o ~/Downloads/appimagelauncher.deb    
    ```

9. Run wezterm and integrate (change default location to ~/bin/)
10. TODO

## Runescape

How to play in HiDPI (with Bolt launcher): https://github.com/Adamcake/Bolt/issues/68
```
GDK_SCALE=3 GDK_DPI_SCALE=0.5 bolt
```

## Self reminders

- Cool apps for sharing screenshots and gifs of screen (flameshot and peek): https://twitter.com/pablordinella/status/1283101626228711424

