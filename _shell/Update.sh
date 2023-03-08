#!/bin/bash
##WebHook:~ 发布 Mo7Blog ~
source "./_shell/init.sh"
# 加载变量
rm -rf node_modules
pnpm add vue@latest vuepress@next @vuepress/client@next vuepress-theme-hope@latest vuepress-plugin-search-pro@latest
pnpm install
pnpm update
