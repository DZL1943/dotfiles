#!/usr/bin/osascript
-- usage: osascript ~/bin/quitapps.applescript 2>&1
-- https://stackoverflow.com/questions/495323/quit-all-applications-using-applescript

set blackList to {"io.github.clash-verge-rev.clash-verge-rev", "com.microsoft.edgemac", "com.tencent.qq", "com.tencent.xinWeChat", "com.obsproject.obs-studio", "com.alicloud.smartdrive", "com.kingsoft.wpsoffice.mac"}

set whiteList to {"com.apple.finder", "com.apple.systempreferences", "com.apple.ScriptEditor2", "com.apple.Stickies", "com.googlecode.iterm2", "net.kovidgoyal.kitty", "com.microsoft.VSCode", "jacklandrin.OnlySwitch", "md.obsidian"}

-- get list of open apps
tell application "System Events"
	set allAppIds to bundle identifier of processes whose background only is false
	log allAppIds
end tell

-- quit each app
repeat with appId in allAppIds
	if appId is not in whiteList then
		log appId
		tell application id appId to quit
	end if
end repeat
