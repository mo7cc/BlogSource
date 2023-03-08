#!/bin/bash
##WebHook:~ 发布 Mo7Blog ~
source "./_shell/init.sh"
# 加载变量

rm -rf "${OutPutPath}"

pnpm run build &&
  cp "${NowPath}/package.json" "${OutPutPath}"

cd "${OutPutPath}" || exit

nowTime=$(date +%Y-%m-%d\T%H:%M:%S)

git init
git add .
git commit -m "${nowTime}"
git remote add origin "${DeployPath}"
git push -f --set-upstream origin master:main

echo "同步完成"
rm -rf "${OutPutPath}/.git"

echo "http://itpo.mo7.cc:9999/"

exit 0
