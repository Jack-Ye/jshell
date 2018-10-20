
#!/bin/bash

br=`git branch | grep "*"`
echo ${br/* /}

git pull origin master

git push origin ${br}

git checkout dev

git merge ${br}

git push origin dev

git checkout ${br}