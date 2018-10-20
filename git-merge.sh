
#!/bin/bash

br=`git branch | grep "*"`
current=${br/* /}
target=$1

echo "====1. 合并master分支到${current}分支===="

git pull origin master

echo "\n\n====2. 推送${current}分支到远程仓库===="

git push origin ${current}

echo "\n\n====3. 切换到${target}分支===="

git checkout ${target}

echo "\n\n====4. 合并${current}分支到${target}分支===="

git merge ${current}

echo "\n\n====5. 推送${target}分支到远程仓库===="

git push origin ${target}

echo "\n\n====6. 切换到${current}分支===="

git checkout ${current}