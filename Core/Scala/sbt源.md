https://www.scala-sbt.org/1.x/docs/Proxy-Repositories.html

华为源: https://mirrors.huaweicloud.com/mirrorDetail/5ebf85de07b41baf6d0882ac?mirrorName=sbt&catalog=language

~/.sbt/repositories
```
[repositories]
local
huaweicloud-ivy: https://mirrors.huaweicloud.com/repository/ivy/, [organization]/[module]/(scala[scalaVersion]/)(sbt[sbtVersion]/)[revision]/[type]s/artifact.[ext],allowInsecureProtocol
huaweicloud-maven: https://mirrors.huaweicloud.com/repository/maven/,allowInsecureProtocol

aliyun-maven: https://maven.aliyun.com/repository/public/

typesafe: http://repo.typesafe.com/typesafe/ivy-releases/, [organization]/[module]/(scala_[scalaVersion]/)(sbt_[sbtVersion]/)[revision]/[type]s/[artifact](-[classifier]).[ext], bootOnly
```