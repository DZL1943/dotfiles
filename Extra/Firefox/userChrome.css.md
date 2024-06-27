首先要在 about:config 开启  `toolkit.legacyUserProfileCustomizations.stylesheets`

然后在 about:profiles 中找到当前配置目录 (mac `~/Library/Application\ Support/Firefox/Profiles/`)

在其中新建 chrome 目录, 在 chrome 目录中新建 ==userChrome.css== 文件

[userChrome.css for Customizing Firefox](https://www.userchrome.org/)

[https://github.com/Timvde/UserChrome-Tweaks](https://github.com/Timvde/UserChrome-Tweaks)

隐藏 tab 栏, 并且保留窗口控制按钮 (自行添加弹性空白后效果更佳)
```css
/* https://github.com/piroor/treestyletab/wiki/Code-snippets-for-custom-style-rules#hide-top-bar-and-move-close-minimize-restore-buttons-to-top-left-macos-big-sur-firefox-89 */
#titlebar {
    appearance: none !important;
    height: 0px;
}

#titlebar > #toolbar-menubar {
    margin-top: 0px;
}

#TabsToolbar {
    min-width: 0 !important;
    min-height: 0 !important;
}

#TabsToolbar > .titlebar-buttonbox-container {
    display: block;
    position: absolute;
    top: 12px;
    left: 0px;
}
```

[Code snippets for custom style rules](https://github.com/piroor/treestyletab/wiki/Code-snippets-for-custom-style-rules)

自动隐藏 TST 侧边栏 (使用光子主题)
```css
/* https://github.com/piroor/treestyletab/wiki/Code-snippets-for-custom-style-rules#auto-showhide-sidebar-by-mouseover-hover */
/*Collapse in default state and add transition*/
#sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"] {
    overflow: hidden;
    min-width: 40px !important;
    max-width: 40px !important;
    transition: all 0.2s ease;
    border-right: 1px solid #0c0c0d;
    z-index: 2;
}

/*Expand to 260px on hover*/
#sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"]:hover,
#sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"]
    #sidebar {
    min-width: 260px !important;
    max-width: 260px !important;
    z-index: 1;
}
```
https://github.com/MrOtherGuy/firefox-csshacks

隐藏地址栏 https://gist.github.com/pedroarthur/02121730f4875c14646fd5293d9818a6?permalink_comment_id=3902164#gistcomment-3902164
```css
#navigator-toolbox {
    margin-top: -32px;
    transition: margin-top 0.5s;
}

#navigator-toolbox:hover, #navigator-toolbox:focus-within {
    margin-top: 0px;
    transition: margin-top 0.5s;
}
```
