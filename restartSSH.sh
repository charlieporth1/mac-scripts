launchctl stop org.openbsd.ssh-agent
launchctl start org.openbsd.ssh-agent

launchctl unload -w /System/Library/LaunchAgents/org.openbsd.ssh-agent.plist
launchctl load -w -S Aqua /System/Library/LaunchAgents/org.openbsd.ssh-agent.plist
