---

kanban-plugin: board
created: "2024-06-03 16:46"
modified: "2024-06-21 15:19"
aliases: [Obsidian 插件, Obsidian-plugins]
tags: [Obsidian]

---

%% 解析方法
```bash
cd .obsidian
# 解析已启用的插件
cat community-plugins.json | grep -Ev '\[|\]' | sed 's/[[:space:]]//g' | sed 's/"//g' | sed 's/,//g' | sort | tee enabled-plugins >(pbcopy)
# (可选)以多列的方式呈现
# cat enabled-plugins | xargs -n3 | column -t
# 列出已安装的插件(默认已有序)
ls -1 plugins > all-installed-plugins
# 仅列出未启用的插件
grep -wvf enabled-plugins all-installed-plugins
```
%%
## 必备

- [ ] any-block
- [ ] cmdr
- [ ] dataview
- [ ] easy-typing-obsidian
- [ ] editing-toolbar
- [ ] file-tree-alternative
- [ ] fuzzy-chinese-pinyin
- [ ] janitor
- [ ] obsidian-excalidraw-plugin
- [ ] obsidian-hover-editor
- [ ] obsidian-kanban
- [ ] obsidian-linter
- [ ] obsidian-outliner
- [ ] obsidian-style-settings
- [ ] obsidian-tagfolder
- [ ] obsidian-tasks-plugin
- [ ] obsidian42-brat
- [ ] quickadd
- [ ] quick-explorer
- [ ] surfing
- [ ] table-editor-obsidian
- [ ] templater-obsidian
- [ ] various-complements


## 推荐

- [ ] attachment-flow-plugin
- [ ] attachment-management
- [ ] better-fn
- [ ] code-styler
- [ ] darlal-switcher-plus
- [ ] dust-calendar
- [ ] editor-width-slider
- [ ] float-search
- [ ] floating-toc
- [ ] make-md
- [ ] nldates-obsidian
- [ ] note-refactor-obsidian
- [ ] obsidian-auto-link-title
- [ ] obsidian-columns
- [ ] obsidian-completr
- [ ] obsidian-footnotes
- [ ] obsidian-git
- [ ] obsidian-heading-shifter
- [ ] obsidian-markmind
- [ ] obsidian-projects
- [ ] obsidian-quiet-outline
- [ ] obsidian-scroll-to-top-plugin
- [ ] obsidian-zoom
- [ ] privacy-glasses
- [ ] quick-plugin-switcher
- [ ] settings-search
- [ ] show-whitespace-cm6
- [ ] url-into-selection


## 附加

- [ ] advanced-canvas
- [ ] buttons
- [ ] canvas-keyboard-pan
- [ ] chronology
- [ ] collapse-node
- [ ] create-note-in-folder
- [ ] cycle-in-sidebar
- [ ] cycle-through-panes
- [ ] embed-code-file
- [ ] execute-code
- [ ] find-unlinked-files
- [ ] hotkey-helper
- [ ] hotkeysplus-obsidian
- [ ] keyboard-analyzer
- [ ] legacy-vault-switcher
- [ ] local-backup
- [ ] obsidian-advanced-uri
- [ ] obsidian-excel-to-markdown-table
- [ ] obsidian-export-image
- [ ] obsidian-folder-focus-mode
- [ ] obsidian-list-callouts
- [ ] obsidian-emoji-toolbar
- [ ] obsidian-minimal-settings
- [ ] obsidian-opener
- [ ] obsidian-plugin-update-tracker
- [ ] obsidian-regex-replace
- [ ] obsidian-shellcommands
- [ ] obsidian-sidebar-expand-on-hover
- [ ] obsidian-trash-explorer
- [ ] obsidian-version-history-diff
- [ ] obsidian-visually-numbered-headings
- [ ] plugin-reloader
- [ ] pomodoro-timer
- [ ] remember-cursor-position
- [ ] root-folder-context-menu
- [ ] solve
- [ ] statusbar-organizer
- [ ] tabs
- [ ] tag-wrangler
- [ ] typewriter-mode
- [ ] unicode-search


## 未启用 %% 口碑不错, 待尝试, 或者暂用不到 %%

- [ ] canvas-mindmap
- [ ] card-board
- [ ] codeblock-customizer
- [ ] custom-sort
- [ ] excalibrain
- [ ] folder-notes
- [ ] image-converter
- [ ] link-exploder
- [ ] link-tree
- [ ] links
- [ ] markdown-table-editor
- [ ] media-extended
- [ ] metadata-menu
- [ ] new-tab-plus
- [ ] obsidian-checklist-plugin
- [ ] obsidian-day-planner
- [ ] obsidian-dynamic-highlights
- [ ] obsidian-full-calendar
- [ ] obsidian-importer
- [ ] obsidian-latex-suite
- [ ] obsidian-link-converter
- [ ] obsidian-memos
- [ ] obsidian-mindmap-nextgen
- [ ] obsidian-pandoc
- [ ] obsidian-reminder-plugin
- [ ] obsidian-sequence-hotkeys
- [ ] open-in-new-tab
- [ ] outliner-md
- [ ] pdf-plus
- [ ] periodic-notes
- [ ] remotely-save
- [ ] sheets
- [ ] single-file-daily-notes
- [ ] tags-overview
- [ ] terminal
- [ ] univer
- [ ] vscode-editor
- [ ] waypoint


## 其他 %% 备用或待测 %%

- [ ] advanced-cursors
- [ ] auto-note-mover
- [ ] automatic-table-of-contents
- [ ] awesome-image
- [ ] background-image
- [ ] better-search-views
- [ ] calendar
- [ ] callout-manager
- [ ] canvas2document
- [ ] card-note
- [ ] cm-chs-patch
- [ ] codeblock-tabs
- [ ] commentator
- [ ] control-characters
- [ ] copy-url-in-preview
- [ ] daily-notes-editor
- [ ] daily-note-navbar
- [ ] digitalgarden
- [ ] drawio-obsidian
- [ ] dynamic-timetable
- [ ] easy-toggle-sidebars
- [ ] edit-history
- [ ] enhanced-annotations
- [ ] enhanced-tables
- [ ] ~~excel~~
- [ ] file-cleaner-redux
- [ ] file-explorer-plus
- [ ] file-order
- [ ] fold-anywhere
- [ ] frontmatter-links
- [ ] global-search-and-replace
- [ ] homepage
- [ ] html-server
- [ ] ~~html-tabs~~
- [ ] ledger-obsidian
- [ ] line-commands
- [ ] lineage
- [ ] longform
- [ ] markwhen
- [ ] marp-slides
- [ ] mermaid-tools
- [ ] ~~minitabs~~
- [ ] mrj-text-expand
- [ ] mysnippets-plugin
- [ ] ninja-cursor
- [ ] note-to-mp
- [ ] notion-like-tables
- [ ] novel-word-count
- [ ] number-headings-obsidian
- [ ] OA-file-hider
- [ ] obsidian-advanced-slides
- [ ] obsidian-annotator
- [ ] obsidian-another-quick-switcher
- [ ] obsidian-asciimath
- [ ] obsidian-comments
- [ ] obsidian-cursor-location-plugin
- [ ] obsidian-custom-frames
- [ ] obsidian-day-and-night
- [ ] obsidian-desmos
- [ ] obsidian-dictionary-plugin
- [ ] obsidian-front-matter-title-plugin
- [ ] obsidian-global-hotkeys
- [ ] obsidian-hider
- [ ] obsidian-icon-folder
- [ ] obsidian-image-auto-upload-plugin
- [ ] obsidian-image-toolkit
- [ ] obsidian-link-embed
- [ ] obsidian-livesync
- [ ] obsidian-local-rest-api
- [ ] obsidian-meta-bind-plugin
- [ ] obsidian-mkdocs-publisher
- [ ] obsidian-plantuml
- [ ] obsidian-plugin-groups
- [ ] obsidian-proxy-github
- [ ] obsidian-quickshare
- [ ] obsidian-regex-pipeline
- [ ] obsidian-sakana-widget
- [ ] obsidian-sort-and-permute-lines
- [ ] obsidian-spaced-repetition
- [ ] obsidian-table-generator
- [ ] obsidian-task-archiver
- [ ] obsidian-textgenerator-plugin
- [ ] obsidian-toggle-list
- [ ] obsidian-user-plugins
- [ ] obsidian-zotero-desktop-connector
- [ ] obsidiosaurus
- [ ] omnisearch
- [ ] open-plugin-settings
- [ ] orgmode-cm6
- [ ] oz-calendar
- [ ] power-mode
- [ ] quick-latex
- [ ] recent-files-obsidian
- [ ] settings-management
- [ ] share-to-notionnext
- [ ] short-tab-name
- [ ] show-hidden-files
- [ ] sliding-panes-obsidian
- [ ] smart-connections
- [ ] ~~spreadsheets~~
- [ ] supercharged-links-obsidian
- [ ] tasks-calendar-wrapper
- [ ] time-ruler
- [ ] todotxt
- [ ] translate
- [ ] unitade
- [ ] vertical-tabs-view
- [ ] vim-im-control
- [ ] webpage-html-export
- [ ] widgets
- [ ] ~~workbooks~~
- [ ] zoottelkeeper-obsidian-plugin
- [ ] zotlit


%% kanban:settings
```
{"kanban-plugin":"board","list-collapse":[false,false,false,false,false]}
```
%%