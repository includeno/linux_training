#显示匹配 pattern1 或 pattern2 的行
grep -E 'abc | abcd' ./grep/grep_training.log
#显示既匹配 pattern1 又匹配 pattern2 的行。
grep 'abc' ./grep/grep_training.log | grep 'abcd'

#匹配abcd abcdxxxxx
grep 'abcd'  ./grep/grep_training.log
#同时匹配xxxx 和ab
grep -i 'abcd'  ./grep/grep_training.log | grep -i 'xxxx'  
#同时匹配xxxxxx 和ab 不限制长度 可能存在7个x
grep -i 'xxxxxx'  ./grep/grep_training.log | grep 'ab' 
#匹配完整xxxxxx
grep -iw 'xxxxxx' ./grep/grep_training.log
#匹配完整xxxxxx
grep -iw 'xxxxxx' ./grep/grep_training.log | grep 'abc'
#终端内颜色高亮
grep -iw 'xxxxxx' ./grep/grep_training.log --color=auto
#after
grep 'abcd'  ./grep/grep_training.log -A 10
#before
grep 'abcd'  ./grep/grep_training.log -B 10
#统计数量
grep 'abcd'  ./grep/grep_training.log -c
#
grep 'abcd'  ./grep/grep_training.log -C 10

#查找目录中所有文件中的内容 显示行号
grep "abcd" './grep/' -nr
#查找目录中所有文件中的内容 不显示行号
grep "abcd" './grep/' -r
#查找当前文件夹内所有文件的内容 显示行号
grep "abcd" '.' -nr
#指定在当前文件夹内所有log类型文件中查找
grep "abcd" '.' -nr --include='*.log'
#指定在当前文件夹内所有文件名是grep开头的文件中查找
grep "abcd" '.' -nr --include='grep*'
#指定在当前文件夹内所有文件名是grep开头的文件中查找 排除特定文件
grep "abcd" '.' -nr --include='grep*' --exclude "grep_training.log"
#
grep "abcd" '.' -nr --include=*.{log,txt}