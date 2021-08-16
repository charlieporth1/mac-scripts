defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES
defaults write com.apple.dt.XCode IDEBuildOperationMaxNumberOfConcurrentCompileTasks 8
defaults write com.apple.dt.Xcode BuildSystemScheduleInherentlyParallelCommandsExclusively -bool YES
defaults write com.apple.dt.Xcode IDEBuildOperationTimingLogLevel -int 3
#defaults write com.apple.dt.XCode IDEIndexDisable 1
#defaults write com.apple.dt.Xcode IDEIndexDisable 1 #this lowercase c is correct
defaults write com.apple.dt.Xcode IDEIndexerActivityShowNumericProgress -bool YES
defaults write com.apple.dt.Xcode ShowDVTDebugMenu -bool YES
defaults write com.apple.dt.Xcode IDECodeCompletionFuzzyMode 3
defaults write com.apple.dt.Xcode IDEWorkaroundForRadar6288283 3
defaults write com.apple.dt.Xcode PegasusMultipleCursorsEnabled -bool YES
defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -bool false
defaults write com.apple.QuickTimePlayerX NSQuitAlwaysKeepsWindows -bool false
defaults write com.apple.dt.Xcode IDEBuildOperationMaxNumberOfConcurrentCompileTasks `sysctl -n hw.ncpu`
#enndable 
#defaults delete com.apple.dt.Xcode IDEIndexDisable
#defaults write com.apple.dt.XCode IDEIndexEnable -bool YES
#disable
#defaults delete com.apple.dt.Xcode IDEIndexEnable
#defaults write com.apple.dt.XCode IDEIndexDisable -bool YES
defaults write com.apple.dt.Xcode IDEIndexerActivityShowNumericProgress -bool YES
defaults write com.apple.dt.Xcode IDEShowPrebuildLogs -bool YES
defaults write com.apple.dt.Xcode IDESourceKitServiceLogLevel -int 3 
defaults write com.apple.dt.Xcode ShowDVTDebugMenu -bool YES
defaults write com.apple.dt.Xcode ApplePersistenceIgnoreState -bool YES
defaults write com.apple.iphonesimulator AllowFullscreenMode -bool YES
defaults write com.apple.dt.Xcode BuildSystemScheduleInherentlyParallelCommandsExclusively -bool NO
#defaults delete com.apple.dt.Xcode BuildSystemScheduleInherentlyParallelCommandsExclusively
