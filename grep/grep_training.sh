#显示匹配 pattern1 或 pattern2 的行
grep -E 'abc | abcd' grep_training.log
#显示既匹配 pattern1 又匹配 pattern2 的行。
grep 'abc' grep_training.log | grep 'abcd'
#匹配abcd abcdxxxxx
grep 'abcd'  grep_training.log
#同时匹配xxxx 和ab
grep -i 'abcd'  grep_training.log | grep -i 'xxxx'  
#同时匹配xxxxxx 和ab 不限制长度 可能存在7个x
grep -i 'xxxxxx'  grep_training.log | grep 'ab' 
#匹配完整xxxxxx
grep -iw 'xxxxxx' grep_training.log 
#匹配完整xxxxxx
grep -iw 'xxxxxx' grep_training.log | grep 'abc'
#终端内颜色高亮
grep -iw 'xxxxxx' grep_training.log --color=auto
#after
grep 'abcd'  grep_training.log -A 10
#before
grep 'abcd'  grep_training.log -B 10
#统计数量
grep 'abcd'  grep_training.log -c
#
grep 'abcd'  grep_training.log -C 10
#查找目录中所有文件中的内容 显示行号
grep "abcd" '.' -nr
#查找目录中所有文件中的内容 不显示行号
grep "abcd" '.' -r
#
grep  -rd read 'abcd' './grep_training copy 2.log'