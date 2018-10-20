
#!/bin/bash

br=`git branch | grep "*"`
current=${br/* /}
echo ${current}

git pull origin master

git push origin ${current}

git checkout dev

git merge ${current}

git push origin dev

git checkout ${current}