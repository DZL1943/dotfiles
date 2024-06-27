---
created: "2023-06-08 18:11"
modified: "2024-05-21 16:59"
---
## 文件已损坏

`sudo xattr -r -d com.apple.quarantine xxx.app`

## 查看 Java 路径

`/usr/libexec/java_home`

## 刷新 dns

`sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder`

## 便签默认字体