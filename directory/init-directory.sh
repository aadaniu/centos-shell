#!/bin/bash

# 检查是否为root用户，脚本必须在root权限下运行
if [[ "$(whoami)" != "root" ]]; then
    echo "please run this script as root !" >&2
    exit 1
fi

# 复制文件夹
cp -rf data /

# 复制文件夹说明
cp README.md /data

# 清除.gitignore文件
find /data -exec mv {}/.gitignore /tmp 1>/dev/null 2>&1 \;