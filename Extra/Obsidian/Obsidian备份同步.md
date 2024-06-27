---
created: "2023-07-02 21:59"
modified: "2024-05-21 16:59"
---
- 电脑
    - Obsidian 文件恢复
    - Git: 方便 reset
        ```shell
        if [[ -n "$(git status --porcelain)" ]]; then git add -A && git commit -m "auto commit@$(date '+%Y%m%d%H%M%S')" && git --no-pager show --name-only;fi
        ```
    - Rsync/FreeFileSync: 本机文件夹备份
        ```shell
        rsync -avh --delete --exclude={'.git/','.trash/'} ~/Documents/Obsidian ~/bak
        
        (cd ~/bak \
        && DATE=$(date +%s) && zip -r "Obsidian-$DATE.zip" Obsidian -P  "Obsidian-$(date -r $DATE '+%Y%m%d%H%M%S')" \
        && ls -l)

        # unzip
        unzip -P "Obsidian-$(date -r $DATE '+%Y%m%d%H%M%S')" -d out Obsidian-$DATE.zip
        ```
    - macOS 时间机器 (删除备份很麻烦)
    - (可选) Kopia 快照 (变更快照有点困难)
- 移动端
    - Syncthing (全量)
    - Remotely Save
    - Live Sync
    - 官方同步
- 云
    - OneDrive
    - iCloud
    - (可选) GitHub
    - 阿里云盘 (全量): 基于 Rsync 备份压缩上传