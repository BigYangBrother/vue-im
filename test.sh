# 前端分支
branch1=$1
#后端分支
branch2=$2
# 环境
dev=$3
# 提交日志
message=$4
# 切分支拉代码
git checkout ${branch1}
git pull
# build
npm run build:${dev}
# 进入后端仓库
cd /Users/liuyang/personal/myblog
git pull
git checkout ${branch2}
# 复制文件
filea=/Users/liuyang/personal/vue-im/src/main.js
cp $filea ./
# 提交代码
git add .
git commit -m ${message}
git push


