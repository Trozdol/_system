# @system M1 Mac Setup

## Password-less sudo
    
    sudo visudo -f /private/etc/sudoers.d/admin-override

    %admin ALL = (ALL) NOPASSWD: ALL

## Install CommandLine Tools

    xcode-select --install --accept
    
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    /bin/bash -c "$(curl -o-   https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh)"
    

## Homebrew

    brew install gh
    brew install nmap
    brew install tree
    brew install nginx
    brew install dnsmasq
    
    brew install php
    brew tap shivammathur/php
    brew install shivammathur/php/php@7.2
    brew install shivammathur/php/php@8.0

    brew install --cask dropbox
    brew install --cask google-chrome
    brew install --cask mysqlworkbench
    brew install --cask visual-studio-code
    brew install --cask virtualbox
    brew install --cask vagrant

    brew install sass/sass/sass

    ln -s ~/Dropbox/@system/php-fpm.conf    /opt/homebrew/etc/php/8.0/php-fpm.d/php-fpm.conf
    ln -s ~/Dropbox/@system/dnsmasq.conf    /usr/local/etc/dnsmasq.d/dnsmasq.conf
    ln -s ~/Dropbox/@system/nginx.conf      /opt/homebrew/etc/nginx/nginx.conf

    sudo brew services start dnsmasq
    brew services start php
    brew services start nginx

### SSH Keys

    ln -s ~/Dropbox/@ssh ~/.ssh
    
    chmod 700 ~/.ssh;
    chmod 600 ~/.ssh/*;
    chmod 644 ~/.ssh/*.pub;

    ln -s ~/Dropbox/@system/trozdol.zsh-theme ~/.oh-my-zsh/custom/themes/trozdol.zsh-theme
    ln -s ~/Dropbox/@system/.zshrc ~/.zshrc
    ln -s ~/Dropbox/@system/.zshrc ~/.zshrc

### NVM

    nvm install v12
    nvm install latest

### Misc Apps.

- https://timingapp.com
- https://desktop.github.com
