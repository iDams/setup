#!/bin/zsh

brewcaskinstall "Cloud" $HOME/Applications
defaults write com.linebreak.CloudAppMacOSX SUEnableAutomaticChecks 1

#defaults write com.linebreak.CloudAppMacOSX launchAtLogin 1
#openifnot "Cloud" "$HOME/Applications/Cloud.app"

defaults write com.linebreak.CloudAppMacOSX autouploadScreenshots 0
defaults write com.linebreak.CloudAppMacOSX copyLinkType 1 # direct link
defaults write com.linebreak.CloudAppMacOSX uploadSoundName -string "Submarine"