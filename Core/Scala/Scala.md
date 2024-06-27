---
created: "2024-04-22 20:39"
modified: "2024-06-27 03:05"
---

## 安装

`cd ~/tmp && curl -fL https://github.com/VirtusLab/coursier-m1/releases/latest/download/cs-aarch64-apple-darwin.gz | gzip -d > cs && chmod +x cs && (xattr -d com.apple.quarantine cs || true) && ./cs setup`

## 语法

[Scala 3 语法摘要 (scala-lang.org)](https://docs.scala-lang.org/scala3/reference/syntax.html)

- 关键字
- 操作符 (==所有操作符都是方法调用==)
- 表达式和语句
    - 定义
        - var, val
        - def
        - type
        - class, object, trait
        - enum
        - extension
        - package、import
    - 控制 (==所有控制结构都有返回值==)
        - if-then-else
        - for-do, for-yield
        - while-do
        - match-case
        - try-catch-finally
- 上下文抽象
- 元编程

> 没有 break 和 continue

## 数据类型

![https://docs.scala-lang.org/resources/images/tour/unified-types-diagram.svg](https://docs.scala-lang.org/resources/images/tour/unified-types-diagram.svg)

- 基本类型
- [集合类型 |Scala 3 — Book |Scala 文档 (scala-lang.org)](https://docs.scala-lang.org/scala3/book/collections-classes.html)
    - Seq
        - IndexedSeq
            - String: 双引号或三引号
            - Range
            - Vector
            - ArrayBuffer (需导入 `import scala.collection.mutable.ArrayBuffer`)
        - LinearSeq
            - List
    - Map
    - Set
- 元组 tuple
- 枚举 enum
- 函数 function、方法 method
- 类 class、对象 object、案例类 case class、特质 trait

### 泛型

## 库

- 标准库 [斯卡拉 3 (scala-lang.org)](https://www.scala-lang.org/api/3.1.3/index.html)
    - annotation
    - beans
    - collection
    - ~~compat~~
    - concurrent: Future, Promise
    - io
    - jdk
    - math
    - ref
    - reflect
    - sys
    - util
- 第三方库
    - Runtime
        - **akka**
        - scalaz/zio
        - cats
    - http
        - akka-http
        - finch
        - http4s
        - sttp
    - json
        - json4s
        - circe
    - orm
        - slick
        - quill
    - web
        - **play**
        - finatra
        - scalatra
    - BigData
        - **spark**
        - flink
        - kafka

## 工具

- ammonite
- scala-cli
- bloop

## 参考资料

- [基本斯卡拉 (underscore.io)](https://books.underscore.io/essential-scala/essential-scala.html)
- [Functional Programming, Simplified (Scala edition) | alvinalexander.com](https://alvinalexander.com/scala/fp-book/learning-functional-programming-in-scala/)
- [Scala Cookbook](http://scalacookbook.com/)
- [S-99: Ninety-Nine Scala Problems | Phil! Gold (aperiodic.net)](https://aperiodic.net/phil/scala/s-99/)
- [前言 · Scala 初学者指南 (gitbooks.io)](https://windor.gitbooks.io/beginners-guide-to-scala/content/)