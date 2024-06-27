---
created: "2023-06-08 18:11"
modified: "2024-05-21 16:59"
---
## 简介

[dataview](https://blacksmithgu.github.io/obsidian-dataview) 是一个 Obsidian 插件, 其可以从 front-matter、inline fields 中获取元数据信息, 并支持 **list、table、task、calendar** 四种查询展示类型.

编写 dataview 查询的方式:
- dataview 代码块 (DQL)
- dataviewjs 代码块
- inline

## dataview

基本结构:
```
<QUERY-TYPE> <fields>
FROM <source>
<DATA-COMMAND> <expression>
<DATA-COMMAND> <expression>
          ...
```

- from
    - tags
    - folders
    - files
    - links
- where: and or not
- sort: asc desc
- group by: 把有相同属性值的行聚合在一起, 例如 group by file.folder
- flatten: 将某个有多行内容的字段展开为多行
- limit

一个按文件夹分组文件的例子:
```dataview- title:"dataview example"
table rows.file.link as filename
from ""
where file.name != "sortspec"
sort file.name
group by file.folder
sort file.folder
```

```dataview- title:"flatten file.lists"
table without id
split(meta(L.section).subpath, " ")[1] as month, L.week as week, dateformat(L.children.date, "MM-dd") as date, L.children.weather as weather, L.children.mood as mood, L.children.habits as habits, L.children.summary as summary
where file.path = this.file.path
flatten file.lists as L
where L.week
sort L.week desc
limit 4
```

## dataviewjs

```dataviewjs- unwrap:false title:"dataviewjs example"
//console.log(dv)

const keys = ["text", "date", "number"]
const values = [
    ["text1", "2023-01-10", 10],
    ["text2", "2023-09-10", 200],
    ["text2", "2023-01-10", 10],
    ["text1", "2023-09-10", 100],
]

//dv.table(keys, dv.array(values).groupBy(v => v[0]).sort(g=>g.key, "desc").map(g=>[g.key, g.rows.sort(v=>v[2]).map(v=>v[1]), g.rows.sort(v=>v[2]).map(v=>v[2]), ]) )

for (let group of dv.array(values).where(p=>dv.date(p[1])>dv.date("today")).groupBy(p => dv.date(p[1]).month).sort(g=>g.key, "desc")) {
    dv.header(3, group.key);
    dv.table(keys,
        group.rows
            .map(v=>[v[0], dv.func.dateformat(dv.date(v[1]), "MM-dd ccc"), v[2]])
            .sort(v=>v[2], "asc")
    )
}
```

```dataviewjs- title:"对单文件中的 inline fileds 查询时按某字段展平为多行"
let pages = dv.pages(`"${dv.current().file.path}"`)
console.log(pages)

//let pages1 = pages.map(p=>[dv.func.dateformat(p.date,"MM-dd ccc"), p.weather, p.mood, p.habits, p.summary]).sort(p => p.date)

let pages2 = pages.date.map((date,i)=>[dv.func.dateformat(date, "MM-dd ccc"), pages.weather[i],pages.mood[i],pages.habits[i],pages.summary[i],]).sort(p => p.date).slice(-30)

dv.table(
    ["date", "weather", "mood", "habits", "summary"],
    pages2
)
```

```dataviewjs- title:"仅按当前目录下的子文件夹分组文件"
const fs = require('fs')
const os = require('os')

var basedir = `${os.homedir}/Documents/Obsidian`
var currentdir = dv.current().file.folder
var subfolders = fs.readdirSync(`${basedir}/${currentdir}`)
subfolders.sort((a,b)=>a.localeCompare(b))

for (let d of subfolders){
    let p = `${basedir}/${currentdir}/${d}`
    if (fs.statSync(p).isDirectory()){
        dv.header(2, d)
        dv.list(dv.pages(`"${currentdir}/${d}"`).where(p=>p.file.name != 'sortspec').sort(p=>p.file.name, 'asc').file.link)
    }
}
```

## 参考

https://s-blu.github.io/obsidian_dataview_example_vault/
