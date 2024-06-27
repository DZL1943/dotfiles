## 模式
https://vimhelp.org/intro.txt.html#vim-modes-intro

- Basic
    - Normal
    - Visual
    - Select
    - Insert
    - Cmdline
    - Ex
- Additional

## 快捷键


| key | cmdline | normal                          | shift                                | ctrl                          | alt | cmd |     |
| :-- | :------ | :------------------------------ | :----------------------------------- | :---------------------------- | :-- | :-- | --- |
| a   |         | append                          | append at line end                   |                               |     |     |     |
| b   |         | move backward start of word     |                                      | scroll screen back            |     |     |     |
| c   |         | change                          | c$                                   |                               |     |     |     |
| d   |         | delete<div>dw de d0 d$ dd</div> | d$                                   | 补全<div>down half screen</div> |     |     |     |
| e   |         | move forward end of word        |                                      | scroll up                     |     |     |     |
| f   |         | find in line                    |                                      | scroll screen forward         |     |     |     |
| g   |         | gg 文首<div>ge</div><div>g0</div> | 文尾<div>数字 +G goto line</div>         | 显示文件信息                        |     |     |     |
| h   |         | &nbsp; 左                        | 将光标移到顶部                              |                               |     |     |     |
| i   |         | Insert                          |                                      | jump in                       |     |     |     |
| j   |         | 下                               | join line                            |                               |     |     |     |
| k   |         | 上                               |                                      |                               |     |     |     |
| l   |         | 右                               | 将光标移到屏幕底部                            |                               |     |     |     |
| m   |         | mark                            | 将光标移到屏幕中间                            |                               |     |     |     |
| n   |         | next                            |                                      |                               |     |     |     |
| o   |         | open newline below              | open newline above                   | jump out/back                 |     |     |     |
| p   |         | put/paste                       |                                      |                               |     |     |     |
| q   | quit    |                                 |                                      |                               |     |     |     |
| r   | read    | replace                         | 连续替换                                 | redo                          |     |     |     |
| s   | 替换      | cl                              | cc                                   |                               |     |     |     |
| t   |         |                                 |                                      |                               |     |     |     |
| u   |         | undo                            | undo line                            | up half screen                |     |     |     |
| v   |         | Visual mode                     |                                      |                               |     |     |     |
| w   | save    | move forward start of word      |                                      |                               |     |     |     |
| x   |         | dl                              | dh                                   |                               |     |     |     |
| y   |         | 复制                              |                                      | scroll down                   |     |     |     |
| z   |         | zz、zt、zb 将光标所在行移到屏幕中间、顶部、底部     | ZZ 保存退出                              |                               |     |     |     |
| 1   | ! 执行命令  |                                 |                                      |                               |     |     |     |
| 2   |         |                                 |                                      |                               |     |     |     |
| 3   |         |                                 |                                      |                               |     |     |     |
| 4   |         |                                 |                                      |                               |     |     |     |
| 5   |         |                                 | 括号匹配<div>接数字跳转到百分比</div>             |                               |     |     |     |
| 6   |         |                                 | move to first non-blank char of line |                               |     |     |     |
| 7   |         |                                 |                                      |                               |     |     |     |
| 8   |         |                                 | `+y` 复制到剪贴板 <div>`+p` 从剪切板粘贴</div>   |                               |     |     |     |
| 9   |         |                                 |                                      |                               |     |     |     |
| \/  |         |                                 | 逆向搜索                                 |                               |     |     |     |
| \[  |         |                                 |                                      | back to normal                |     |     |     |
| \]  |         |                                 |                                      | jump in                       |     |     |     |
| \`  |         | `` jump                         |                                      |                               |     |     |     |
| .   |         | repeat                          |                                      |                               |     |     |     |

http://blog.ngedit.com/vi-vim-cheat-sheet-sch.gif

### Motion

- 光标移动
    - hjkl: 左下上右
- 屏幕滚动
    - `C-e` 向下滚动一行
    - `C-y` 向上滚动一行
    - `C-d` 向下滚半页
    - `C-u` 向上滚半页
    - `C-f` 向下滚一页
    - `C-b` 向上滚一页
- 单词级 (W、E、B 表示只使用空格作为分隔符)
    - w: 词首向后
    - e: 词尾向后
    - ge: 词尾向前
    - b: 词首向前
- 句子级
    - `()`: 句首, 下一句首
- 行级
    - 0: 行首
    - ^: 行首第一个非空字符
    - `g_`: 行尾最后一个非空字符
    - $: 行尾
    - `+`: 后一行首
    - `-`: 前一行首
    - f: 行内字符查找 (F 反向)
    - t: till(移动到 f 查找的前一个字符, T 反向)
- 段落级
    - `{}`: 段首段尾
- 屏幕级
    - H: 光标移动到屏幕首行
    - M: 光标移动到屏幕中间行
    - L: 光标移动到屏幕末行
    - zz: 当前行屏幕居中
    - zt: 当前行置顶
    - zb: 当前行置底
- 文件级
    - nG 或 `:n`: 跳到第几行开头
    - `n%`: 按百分比跳转
    - gg 或 `:0`: 文首
    - G 或 `:$`: 文尾
    - `/`: 向前搜索
    - `?`: 向后搜索
    - n: 重复搜索 (N 反向)
    - `C-o`: jump back
    - `C-i`: jump in
- 匹配
    - `*`: 向下查找当前光标下的单词
    - `#`: 向上查找当前光标下的单词
    - `%`: 跳转到匹配的括号处
- 窗口操作 `C-w`
    - v: 向右分屏
    - s: 向下分屏
    - w: 切换分屏 (也可用 hjkl 操作)
    - c: 关闭分屏
    - <>: 调整宽度
    - +-: 调整高度

### Command

- a: append (A 行尾附加)
- i: 插入 (I 行首插入)
- o: 下面插入一行 (O 上面插入一行)
- r: 替换 (R 替换到行尾)
- x: 删除字符 (X 退格)
- s: 删除字符并插入 (S/cc 删除行并插入)
- C: 删除到行尾并插入
- D: 删除至行尾
- Y/yy: 拷贝行
- J: 合并两行
- u: 撤销 (U 行内撤销)
- p: 粘贴 (P 光标前粘贴)
- ~: 转换大小写
- . 重复命令
- m: 标注
- v: 可视模式 (V 可视行模式)

### operator

- y: 拷贝
- d: 删除
- c: 修改
- `<>`: 缩进

## 配置

```embed-vim
PATH: "vault://vim/.vimrc"
```

## 插件

### vim-plug

```shell
# 安装
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# 配置
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/vim-markdown'
call plug#end()

# 命令
# PlugInstall, PlugUpdate, PlugClean, PlugUpgrade, PlugStatus
```

### coc.vim

> 注: 需要 node  
> 配置路径 `~/.vim/coc-settings.json`

```vim
hi CocMenuSel ctermfg=white ctermbg=DarkCyan

let g:coc_global_extensions = [
            \'coc-yank',
            \'coc-pairs',
            \'coc-json',
            \'coc-css',
            \'coc-html',
            \'coc-tsserver',
            \'coc-yaml',
            \'coc-lists',
            \'coc-snippets',
            \'coc-pyright',
            \'coc-clangd',
            \'coc-prettier',
            \'coc-xml',
            \'coc-syntax',
            \'coc-git',
            \'coc-marketplace',
            \'coc-highlight',
            \'coc-sh',
            \'coc-rust-analyzer',
            \'coc-metals',
            \]

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
```

## 

## 参考

- https://neovim.io
- https://docs.helix-editor.com/keymap.html

## 问题技巧

### 剪切板

1. iterm 下按住 option 选择即复制
2. `pbcopy`, `pbpaste` (仅适用于 macOS, 并且 Linux 下的替代方案 xclip 需要 XServer)
3. `set paste`
4. `set clipboard^=unnamed,unnamedplus` 同步 vim 剪贴板, 直接 y、p 即可
5. 通过 `+y` `+p` 复制粘贴 (`*y` `*p` 在 X11 中对应的是鼠标选择剪切板)

```vim
vnoremap <C-y> "+y
vnoremap <C-d> "+d
nnoremap <C-p> "+p
```

> 在 ssh 环境下不适用 (iterm 下安装 shell-integration 后可以通过 `it2copy` 复制)
