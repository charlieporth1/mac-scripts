#!/bin/bash
defaults write com.apple.dock springboard-hide-duration -int 0
defaults write com.apple.dock springboard-show-duration -int 0
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
defaults write -g QLPanelAnimationDuration -float 0
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true
defaults write com.apple.Safari WebKitInitialTimedLayoutDelay 0.25
#defaults write NSGlobalDomain KeyRepeat -int 0
defaults write NSGlobalDomain KeyRepeat -float 0.000000000000000000000000005
defaults write -g NSWindowResizeTime -float 0.001
defaults write NSGlobalDomain NSAppSleepDisabled -bool NO



killall Dock
