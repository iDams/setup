#!/bin/zsh

# big & autohidden dock
defaults write com.apple.dock tilesize -int 128
defaults write com.apple.dock autohide -bool true

# no boucing icons
defaults write com.apple.dock no-bouncing -bool true

# dim hidden apps
defaults write com.apple.dock showhidden -bool true

# Faster animation when switching spaces
defaults write com.apple.dock expose-animation-duration -float 0.15

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Minimize effect
defaults write com.apple.dock mineffect -string scale

# Enable spring loading for all Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Dashboard.app not as a space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Dock order
dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Mail.app"
dockutil --no-restart --add "/Applications/Calendar.app"
#dockutil --no-restart --add "/Applications/Wunderlist.app"
dockutil --no-restart --add "/Applications/iTunes.app"
dockutil --no-restart --add "/Applications/Messages.app"
dockutil --no-restart --add "/Applications/Tweetbot.app"
dockutil --no-restart --add "$HOME/Applications/FirefoxNightly.app"
#dockutil --no-restart --add "/Applications/Firefox.app"
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Xcode.app/Contents/Developer/Applications/iOS Simulator.app"
dockutil --no-restart --add "/Applications/Utilities/Terminal.app"
#dockutil --no-restart --add "$HOME/Applications/iTerm.app"
dockutil --no-restart --add "$HOME/Applications/GitHub.app"
dockutil --no-restart --add "/Applications/Atom.app"
dockutil --no-restart --add "$HOME/Applications/LimeChat.app"
dockutil --no-restart --add "/Applications/`ls /Applications | grep Slack`"
dockutil --no-restart  --add "/Applications/Steam.app"
dockutil --no-restart --add "/Applications" --view grid --display folder --sort name

# Icons

# sudo is for appstore apps
# Tweetbot yosemite icon http://ziggy19.deviantart.com/art/OS-X-Yosemite-Tweetbot-482529436
sudo setfileicon "$DOTFILES/preferences/icns/Tweetbot.icns" "/Applications/Tweetbot.app"
# Atom Yosemite Icon https://dribbble.com/shots/1590423-Atom-Yosemite-Icon
setfileicon "$DOTFILES/preferences/icns/Atom.icns" "/Applications/Atom.app"
# Slack icon from Muir Yosemite Icons Set 2 https://dribbble.com/shots/1773636-Muir-Yosemite-Icons-Set-2
setfileicon "$DOTFILES/preferences/icns/Slack.icns" "/Applications/`ls /Applications | grep Slack`"
# Steam icon from Muir Yosemite Icons Set 2 https://dribbble.com/shots/1773636-Muir-Yosemite-Icons-Set-2
setfileicon "$DOTFILES/preferences/icns/Steam.icns" "/Applications/Steam.app"