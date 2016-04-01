#!/bin/bash

# Got most of commands from https://github.com/mathiasbynens/dotfiles/blob/master/.osx

# Ask for sudo password
sudo -v

# Install Xcode Command Line Tools
#xcode-select --install

# Disable boot sound
sudo nvram SystemAudioVolume=" "

# Disable default osx quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Finder: show hidden files by default
#defaults write com.apple.finder AppleShowAllFiles -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

echo "Done. Note that some of these changes require a logout/restart to take effect."