https://www.gnu.org/software/emacs/documentation.html
## 按键说明

- C - Control
- M - Meta/Option/Alt
- S - Shift
- ESC
- s - Super/Command
- H - Hyper
- A - Alt

## 快捷键

https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf  

- C
    - g quit 退出输入
    - p/n/b/f 上下左右
    - a/e 行首行尾
    - k kill-line
    - r/s 搜索 (C-M-r/s 正则搜索)
    - v scroll-up (可能被 cua-mode 覆盖, M-v scroll-down)
    - w 剪切 (M-w 复制)
    - y 粘贴
    - / undo
    - C-c
    - C-h 帮助 (按 q 可以关闭临时窗口)
        - b
        - f
        - k
        - m
    - C-x
        - 0 delete-window
        - 1 delete other-windows
        - 2 split-window-below
        - 3 split-window-right
        - o switch-window
        - d dired
        - h 全选
        - b switch buffer (直接按左右方向键可以快速切换)
        - k kill buffer
        - u undo
        - C-b list buffer
        - C-c 保存退出
        - C-e eval
        - C-f find-file
        - C-q read-only-mode
        - C-s save
        - C-t transpose-lines
        - C-; comment-line
- M
    - ! shell-command
    - <> EOF/BOF
    - % replace
    - M-x
    - M-g
        - g goto-line

## 配置

```embed-lisp
PATH: "vault://emacs/init.el"
```

## [插件](https://melpa.org)

- use-package
- which-key
- company
- smartparens、rainbow-delimiters、flycheck、highlight-indentation、format-all、magit、imenu-list
- ivy、consel、swiper
- smart-mode-line
- drag-stuff、easy-kill、right-click-context、valign
- dashboard、scratch
- org-journal、org-brain、org-roam、org-noter
- slime
- evil
- treemacs、projecttile

## [Org mode](https://www.gnu.org/software/emacs/manual/org.html)

## 参考

- [GitHub - emacs-tw/awesome-emacs: A community driven list of useful Emacs packages, libraries and other items.](https://github.com/emacs-tw/awesome-emacs) 

## 问题技巧

### cua-mode