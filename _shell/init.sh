#!/bin/bash

function GitSet {
  echo " ====== git设置大小写敏感,文件权限变更 ====== "
  git config core.ignorecase false

  git config --global core.fileMode false
  git config core.filemode false

  chmod -R 777 ./
}

## 存储变量

# 项目根目录
NowPath=$(pwd)

# 最终的输出目录
OutPutPath=${NowPath}"/dist"

# 部署目录
DeployPath="git@github.com:mo7cc/blog.mo7.cc.git"
