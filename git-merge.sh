
#!/bin/bash

br=`git branch | grep "*"`
current=${br/* /}
target=$1

echo "====1. 合并master分支到${current}分支===="

git pull origin master

echo "\n\n====2. 拉取${current}分支最新代码===="

git pull origin ${current}

echo "\n\n====3. 推送${current}分支到远程仓库===="

git push origin ${current}

echo "\n\n====4. 删除本地${target}分支===="

git branch -D ${target}

echo "\n\n====5. 切换到${target}分支===="

git checkout -b ${target}

echo "\n\n====6. 拉取${target}分支最新代码===="

git pull origin ${target}

echo "\n\n====7. 合并${current}分支到${target}分支===="

git merge ${current}

echo "\n\n====8. 推送${target}分支到远程仓库===="

git push origin ${target}

echo "\n\n====9. 切换到${current}分支===="

git checkout ${current}
