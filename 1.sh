#!/bin/bash

path_top=$(pwd)
echo "最初路径：$path_top"
export REPO_URL='https://mirrors.tuna.tsinghua.edu.cn/git/git-repo/'

dir1="android_vendor"
if [ ! -d "$dir1" ]; then
    mkdir -p "$dir1"
    echo "目录 '$dir1' 已创建。"
else
    echo "目录 '$dir1' 已存在。"
fi

cd "$dir1"
echo "当前repo==$dir1"
echo "当前工作目录：$(pwd)"

cd "$path_top"
echo "$REPO_URL"