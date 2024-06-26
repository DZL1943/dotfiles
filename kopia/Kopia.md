https://kopia.io/docs/getting-started/
## 创建 Repository

repo 是保存快照的地方
- 选择存储类型: 一般选第一个 `Local Directory`
- 填写 repo 存储路径: **注意这是保存快照的位置, 不是待备份的文件夹路径!** 这里必须是已经存在的完整路径, 建议创建好之后直接通过图标点选.
- 填写 repo 密码 (用于加解密)
- 点击创建 repo

## 创建 Policy

policy 是一组规则，告诉Kopia如何创建/管理快照;这包括压缩、快照保留和调度何时自动拍摄快照等功能。
- 选择 Policies 栏
- 点击文件夹图标选择**待备份的文件夹**
- 点击 `Set policy`, 在接下来的界面进行设置
    - Snapshot Retention: 快照的份数、保留时间等
    - Files: 忽略文件
    - Error Handing
    - Compression: 压缩(zstd)
    - **scheduling**: **自动**快照周期
    - Upload
    - Snapshot Actions
    - Folder Actions
    - logging
    - Other
- 点击 `Save Policy` 保存设置

## 查看和还原 Snapshots

- 选择 Snapshots 栏, 此处会按路径组织快照
- 点击想要查看的备份路径, 此处将列举该路径对应的所有快照.
    - 选择一个快照点击, 将显示该路径目录结构.
        - 点击文件夹可以进入, 点击文件可以下载.
        - 点击上方的 `Mount` 按钮可以挂载
        - 点击上方的 `Restore` 按钮可以将当前目录文件恢复到指定目录(需填写绝对路径, 且目标目录为空).
    - 勾选快照前的复选框, 可在上方选择 delete 删除快照