# 前端分支
branch1=$1
#后端分支
branch2=$2
# 环境
dev=$3
# 切分支拉代码
git checkout ${branch}
git pull
# build
npm run build:${dev}
# 进入后端仓库
cd /Users/liuyang/personal/build-test
git pull
# 复制文件
filea=/Users/liuyang/personal/vue-im/src/main.js
cp $filea ./


