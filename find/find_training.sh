#搜索名称以c结尾的文件
find . -name "*.c"
#搜索当前文件夹内的文件并打印
find . -type f -print
#将当前目录及其子目录下所有最近 20 天内更新过的文件列出
find . -ctime -20
#在当前文件夹内搜索文件 排除./.git/目录 -prune -o需要一起使用
find . -path "./.git/*" -prune -o -type f -print
#在当前文件夹内搜索文件 排除./.git/目录 打印出完整路径
find . -path "./.git/*" -prune -o -type f -exec ls -l {} \;