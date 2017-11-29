#!/bin/bash
#指定用bin下的sh or bash解释这个文件
#多行注释, sh里没有多行注释，只能每一行加一个#号
#如果在开发过程中，遇到大段的代码需要临时注释起来，过一会儿又取消注释，
#每一行加个#符号太费力了，可以把这一段要注释的代码用一对花括号括起来，
#定义成一个函数，没有地方调用这个函数，这块代码就不会执行，
#达到了和注释一样的效果。

# toturial:
# http://www.runoob.com/linux/linux-shell-variable.html

#变量.
#定义不用$, 等号前后无空格, 后面不用;
#使用变量, 使用一个定义过的变量，只要在变量名前面加美元符号即可，如：
#花括号是可选的
your_name="Dean"
echo "print the variable name: "$your_name;#echo会自动从新一行开始, 分号;有无没关系
echo "print the variable name (another way): "${your_name}	
echo ""
#重定义变量, 已定义的变量，可以被重新定义，如：
your_name="Dean"
echo "print the variable name: "$your_name
your_name="Yun"
echo "print re-defined variable name: "$your_name
echo " "

#字符串
#可以用单引号，也可以用双引号，也可以不用引号。
#单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的
#单引号字串中不能出现单引号（对单引号使用转义符后也不行）
#双引号里可以有变量, 双引号里可以出现转义字符
#拼接字符串
your_name="Dean"
greeting="hello, "$your_name
greeting_1="hello, ${your_name}"
echo "link two strings:"
echo $greeting $greeting_1
echo ""
#获取字符串长度：
string="abcd"
echo "the length of string is: "${#string} #输出：4
echo ""
#提取子字符串
string="alibaba is a great company"
echo "the sub of the string is: "${string:1:4} #输出：liba
echo ""

# list all the files in the folder.
for file in `ls .`
do
	echo $file
done

# 运行时传递参数
# $0为执行的文件名
# $1为第一个参数
# $n第n个参数
# $#参数的个数
# $*以一个字符串显示全部的参数
# $$当前process id 号
# $!后台运行的最后一个进程的ID号??
# $@与$*相同，只有在使用引号才有区别.

#数组
my_array=(A B "C" D)
echo ${my_array[0]} # 取单个元素
echo "数组的元素为: ${my_array[@]}" #取所有
echo "数组元素个数为: ${#my_array[@]}" #取所有, 再得到长度
for elem in ${my_array[@]} # 遍历所有
do 
    echo $elem
done

# 基本运算
val=`expr 2 + 2`
echo "两数之和为 : $val"
a=10
b=20
val=`expr $a + $b`
echo "a + b : $val"
val=`expr $a - $b`
echo "a - b : $val"
val=`expr $a \* $b`  #乘号(*)前边必须加反斜杠(\)才能实现乘法运算
echo "a * b : $val"
val=`expr $b / $a`
echo "b / a : $val"
val=`expr $b % $a`
echo "b % a : $val"
if [ $a == $b ]
then
   echo "a 等于 b"
fi
if [ $a != $b ]
then
   echo "a 不等于 b"
fi

# 文件测试运算符
file="ShellBasics.sh"
if [ -r $file ]
then
   echo "文件可读"
else
   echo "文件不可读"
fi
if [ -w $file ]
then
   echo "文件可写"
else
   echo "文件不可写"
fi
if [ -x $file ]
then
   echo "文件可执行"
else
   echo "文件不可执行"
fi
if [ -f $file ]
then
   echo "文件为普通文件"
else
   echo "文件为特殊文件"
fi
if [ -d $file ]
then
   echo "文件是个目录"
else
   echo "文件不是个目录"
fi
if [ -s $file ]
then
   echo "文件不为空"
else
   echo "文件为空"
fi
if [ -e $file ]
then
   echo "文件存在"
else
   echo "文件不存在"
fi

# echo
echo "It is a test"
echo "\"It is a test\""
echo `date` #显示当前日期.

#函数?

#if-else?

#其他?

#运行文件
#chmod +x shell1.sh
#./shell1.sh #./意思是在当前的目录下找shell1.sh这个文件






