function loudEcho () {
    echo "------------------------------------"
    echo $1
    echo "------------------------------------"
}

loudEcho "Cloning dotfiles..."
git clone git@github.com:zvezdan019/setup.git ~/setup

loudEcho "Setup some OSX settings..."
sudo chmod +x ~/dotfiles/osx.sh
~/dotfiles/osx.sh

loudEcho "Installing home brew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

loudEcho "Brew tap..."
brew tap casidiablo/custom
brew tap caskroom/versions
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php

loudEcho "Brew install..."
brews=(
    git
    wget
    caskroom/cask/brew-cask
)
brew install ${brews[@]}
brew linkapps

loudEcho "Brew install vim..."
brew install vim --with-lua
sudo mv /usr/bin/vim /usr/bin/vim73

loudEcho "Brew cask..."
apps=(
    adium
    teamviewer 
    appcleaner
    cloudup
    keepassx    
    firefox
    google-chrome
    google-drive
    unrarx
    evernote
    iterm2
    sublime-text    
    utorrent 
    libreoffice
    skype
    tunnelblick
    virtualbox
    vlc
    sophos-anti-virus-home-edition
    
)
brew cask install ${apps[@]}




