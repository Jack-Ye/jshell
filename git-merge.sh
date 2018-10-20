
#!/bin/bash

br=`git branch | grep "*"`
current=${br/* /}

echo "====1. 合并master分支到${current}分支===="

git pull origin master

echo "\n\n====2. 推送${current}分支到远程仓库===="

git push origin ${current}

echo "\n\n====3. 切换到dev分支===="

git checkout dev

echo "\n\n====4. 合并${current}分支到dev分支===="

git merge ${current}

echo "\n\n====5. 推送dev分支到远程仓库===="

git push origin dev

echo "\n\n====6. 切换到${current}分支===="

git checkout ${current}