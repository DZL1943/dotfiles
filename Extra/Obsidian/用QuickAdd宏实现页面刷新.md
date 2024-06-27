---
created: "2024-04-22 20:39"
modified: "2024-05-21 16:59"
---
1. 准备脚本 (保存下面代码为 js 文件)
    ```JavaScript
    module.exports = async (params) => {
      await app.workspace.activeLeaf.rebuildView();
    };
    ```
2. 新建 macro 和 choice (先创建哪个都可以, 以下以先创建 choice 为例)
    1. 点击 `Add Choice` 旁边的按钮选择 `Macro`, 在左边的输入框填写(Choice)名称, 点击 `Add Choice` 按钮新建 Choice
    2. 点击上方创建的 choice 中的设置图标, 选择已有的 macro 或新建 macro
    3. 在配置 macro 界面, 在 `User Scripts` 输入框中选择 js 脚本, 点 `Add` 添加
    4. 回到 qa 插件主界面, 点击 choice 右边的 ⚡️ 图标, 将其点亮, 然后即可为该 choice 添加快捷键
  