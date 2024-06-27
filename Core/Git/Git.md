---
created: "2024-04-22 20:39"
modified: "2024-06-27 02:45"
---

## 参考

<https://git-scm.com/book/zh/v2>

## 配置

```shell
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com

git config --global core.ignorecase false
git config --global core.quotepath false
git config --global init.defaultBranch main
git config --global push.autoSetupRemote true
```

## 基础

![image](https://git-scm.com/book/en/v2/images/areas.png)

- git init
- git status
- git diff
- git add
- git clean
- git restore
- git commit
    - `--amend`
- git reset
    - `--mixed` (默认): 重置 HEAD 和索引
    - `--soft`: 只重置 HEAD
    - `--hard`: 重置 HEAD、索引和工作区
    - `--merge`
    - `--keep`: 重置 HEAD 但保存本地变更
- git revert
- git blame
- git log
    - `--stat`
    - `--graph`
- git reflog

## 分支

- git branch
- **git checkout**
- git swtich
- git stash
- git merge
- **git rebase**
- git cherry-pick
- git tag
- git submodule

## 远程库

- git remote
- git clone
- git fetch
- git pull
- git push

## GitHub

### HTTPS 方式

#### GitHub CLI
  
```shell
brew install gh

gh auth login

gh repo create
```
  
#### GCM
  
```shell
brew tap microsoft/git
brew install --cask git-credential-manager-core
```
  
### [SSH 方式](https://docs.github.com/zh/authentication/connecting-to-github-with-ssh)

1. 新建 ssh key: `ssh-keygen -t ed25519 -C "your_email@example.com"`  
   备注: 此处的 -C 仅仅是对该 key 的备注, 并不需要和别的地方保持一致
2. `eval "$(ssh-agent -s)"`
3. `touch ~/.ssh/config`
  
    ```text
    Host *
    AddKeysToAgent yes
    UseKeychain yes
    IdentityFile ~/.ssh/id_ed25519
    ```
  
4. `ssh-add --apple-use-keychain ~/.ssh/id_ed25519`
5. `pbcopy < ~/.ssh/id_ed25519.pub`
6. 在 GitHub Settings 中添加
7. 在提交之前
  
    ```shell
    git config --global user.name "John Doe"
    git config --global user.email johndoe@example.com
    ```
  
   在 GitHub 中主要通过 email 识别用户

## Internal

## Tips

### 恢复工作区

`git restore .`

### 移除 gitignore 中已经提交过的文件

`find . -name '.DS_Store' -exec git rm -r --cached {} \;`