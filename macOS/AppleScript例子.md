---
created: "2023-06-08 18:11"
modified: "2024-05-21 16:59"
---
## 点击红叉按钮

```AppleScript
tell application "System Events"
    set frontApp to name of first application process whose frontmost is true
    #set frontApp to "Finder"
    #display dialog frontApp
    #set frontWindow to the title of window 1 of application process frontApp
    #set entire_contents to entire contents of window frontWindow of application process frontApp
    #get properties of first item of buttons of window frontWindow of application process frontApp
    
    tell application process frontApp to tell button 1 of window 1 to click #perform action "AXPress"
    delay 1
end tell
```

## 切换显示菜单栏

```AppleScript
tell application "System Preferences"
	reveal pane id "com.apple.preference.dock"
	delay 0.5
	tell application "System Events"
		#click checkbox "Automatically hide and show the menu bar in full screen" of window "Dock & Menu Bar" of process "System Preferences"
		click checkbox "自动在桌面隐藏和显示菜单栏" of window "程序坞与菜单栏" of process "System Preferences"
	end tell
	delay 0.5
	quit
end tell
```

https://github.com/raycast/extensions/blob/main/extensions/toggle-menu-bar/src/toggle.tsx