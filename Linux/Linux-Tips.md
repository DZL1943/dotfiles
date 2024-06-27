## mkdir

- -p: 不存在则创建父目录
- -m: 设置模式

## ls

- -A: 显示.开头的项, 但是除了.和..
- -p: 目录加上尾斜杆

### 仅列出目录

```shell
# .* 将包括隐藏项
ls -d1 */ .*/ | sed -e 's-/$--'
```

### 打印目录树

```shell
ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'
```

## mv

- 文件到文件
    - 若目标存在, 则覆盖
    - 若不存在, 则重命名
- 文件到目录
    - 若目标存在, 则移入
    - **若不存在, 则当成文件重命名**
- 文件到目录/
    - 若目标存在, 则移入
    - 若不存在, 则报错
- 目录到目录
    - 若目标存在, 则移入
    - 若不存在, 则重命名

## cp

- -a archive
- -b backup
- -l 硬链接
- -L always follow symbolic links in SOURCE
- -P never follow symbolic links in SOURCE
- -s 符号链接
- -T treat DEST as a normal file

## rm

### 删除所有(包括隐藏项)

```shell
# 不建议
rm -rf * .*

rm -rf {,.[!.],..?}*

ls -A1 | xargs -I{} rm -rf {}

find . -mindepth 1 -delete
```

## ln

## find

```shell
# 排除目录
find . ! \( -path './.trash/*' -o -path './.obsidian/*' \) -name '*.png'

find . ! -path './.trash/*' ! -path './resources/*' ! -path './.obsidian/*' -name '*.png' -exec ls -lh {} \;
```

```shell
# 查询大文件
find . -size +100M -exec ls -lh {} \;
```

## date

[date(1) — manpages-zh — Debian bookworm — Debian Manpages](https://manpages.debian.org/bookworm/manpages-zh/date.1.zh_CN.html)

```
date '+%F %T'
date '+%x %X'
date -r $(date +%s) '+%Y-%m-%d %H:%M:%S %A %Z'
```

## zip

```
zip -r filename path -e
unzip -l filename
unzip filename -d

for i in */; do zip -r "${i%/}.zip" "$i"; done
```

## tar

```
# 压缩 path 下所有内容到当前目录 (这种写法在解压时最好指定目录名)
tar czvf filename.tar.gz -C path .
# 查看
tar tvf filename.tar.gz
# 解压到指定目录 (要求目录存在)
tar xvf filename.tar.gz -C path
```

## rsync

`rsync -aHvhn --delete --exclude={'.git/','.trash/'} ~/Documents/Obsidian ~/bak`

## nohup

`nohup scriptpath > server.log 2>&1 &`

## jq

### 格式化输出

```shell
# -C 可以保留彩色
jq -C '.' extensions.json | less
```

### 输出顶层的 keys

`jq 'keys' xxx.json`

### 选择数组元素

`jq '.addons[0]' xxx.json`

[jq cheat sheet | Zendesk Developer Docs](https://developer.zendesk.com/documentation/integration-services/developer-guide/jq-cheat-sheet/)
### 选择对象属性

`jq '.addons[].id xxx.json'`

### 排序
```shell
# 对json数组排序. sponge 是为了写会 json 文件
cat xxx.json | jq 'sort' | sponge xxx.json
```

[Sorting JSON Objects | jq ‘sort’ Function Guide](https://ioflood.com/blog/jq-sort/)
