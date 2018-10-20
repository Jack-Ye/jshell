1. 在自己的feature_xx分支上提交代码

2. 执行 sh git-merge.sh dev 

3. 脚本会做以下三件事

   1. 将feature_xx和master同步
   2. 将feature_xx推送到远程feature_xx
   3. 将feature_xx和dev分支合并，并推送到远程dev

4. 其中dev可以自己指定，比如feature_test_merge

5. 编写个alias就更方便了

   ```
   alias gmd="sh /Users/didi/kcajay/gits/jshell/git-merge.sh dev" //测试环境合并
   alias gmp="sh /Users/didi/kcajay/gits/jshell/git-merge.sh prerelease" //预发环境合并
   
   ```

