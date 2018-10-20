
#!/bin/bash

br=`git branch | grep "*"`
current=${br/* /}

echo "====合并master分支到${current}分支===="

git pull origin master

echo "====推送${current}分支到远程仓库===="

git push origin ${current}

echo "====切换到dev分支===="

git checkout dev

echo "====合并${current}分支到dev分支===="

git merge ${current}

echo "====推送dev分支到远程仓库===="

git push origin dev

echo "====切换到${current}分支===="

git checkout ${current}