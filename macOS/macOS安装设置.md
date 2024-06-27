---
created: "2024-06-16 08:37"
modified: "2024-06-16 09:00"
tags: macOS
cssclasses: 
---

# before

## 备份

## 准备

- (可选) [创建可引导的 macOS 安装器 - 官方 Apple 支持 (中国)](https://support.apple.com/zh-cn/101578)
- 软件包

# in progress

- [抹掉 Mac 并将它还原为出厂设置 - 官方 Apple 支持 (中国)](https://support.apple.com/zh-cn/102664)
    - [出售、赠送、折抵或回收 Mac 前该怎么做 - 官方 Apple 支持 (中国)](https://support.apple.com/HT201065)
    - [使用“磁盘工具”抹掉搭载 Apple 芯片的 Mac - 官方 Apple 支持 (中国)](https://support.apple.com/zh-cn/102506)
- 联网激活
- (可选) [如何重新安装 macOS - 官方 Apple 支持 (中国)](https://support.apple.com/zh-cn/102655)
    - [将外置储存设备用作 Mac 的启动磁盘 - 官方 Apple 支持 (中国)](https://support.apple.com/zh-cn/111336)
- 进入系统安装设置界面
- 推迟各种设置尽快进入桌面

# after
## 数据恢复
## 系统设置

- Apple ID (稍后)
- Wi-Fi (已连接)
- 蓝牙: **连接键鼠**
- 网络
    - 防火墙
- 通知
- 声音
    - 关闭启动声音
- 专注模式
- 屏幕使用时间
- 通用
- 外观
    - 滚动条
- 辅助功能
    - 缩放
    - 指针控制
- 控制中心(菜单栏图标)
    - 电池
    - 时钟
    - 自动隐藏和显示菜单栏
- Siri与聚焦
- 隐私与安全
- 桌面与程序坞
    - 将窗口最小化至应用程序图标
    - 台前调度
    - 小组件
    - 触发角
- 显示器
    - 夜览
- 墙纸
- 屏幕保护程序
- 电池
    - 低电量模式
- 锁定屏幕
- 触控ID与密码
- 用户与群组
- 密码
- 互联网账户
- Game Center
- 钱包与Apple Pay
- 键盘
    - 重复速率和延迟(拉到最大)
    - 输入法
- 鼠标
- **触控板**
    - 静默点按
- 打印机与扫描仪
## defaults

### 键盘连按

```shell
defaults write -g ApplePressAndHoldEnabled -bool false
# or
defaults write NSGlobalDomain ApplePressAndHoldEnabled -boolean false
```

## 桌面、程序坞、启动台设置
## 自带软件设置
###  Finder
### Safari
### 终端

## 桌面软件安装与设置

## 命令行工具安装与设置

