#!/bin/bash

# 启动 Jekyll 并强制检测文件变化
bundle exec jekyll serve --livereload --force_polling &

# 等待服务器启动
sleep 5

# 根据系统类型打开浏览器
case "$OSTYPE" in
  linux-gnu*) xdg-open "http://127.0.0.1:4000/" ;;
  darwin*)    open "http://127.0.0.1:4000/" ;;
  cygwin*|msys*) start "http://127.0.0.1:4000/" ;;
  *)          echo "请手动访问: http://127.0.0.1:4000/" ;;
esac

# 将 Jekyll 进程拉回前台以便查看日志
fg %1