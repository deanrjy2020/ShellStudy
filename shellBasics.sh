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

#整型
#若要进行数学运算，必须使用一些命令例如let、declare、expr、双括号等
declare dean_int=13
echo "the int is: "$dean_int 
let dean_int=${dean_int}+1
echo ${dean_int}+1
echo ""

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

#数组??

#函数?

#if-else?

#其他?

#运行文件
#chmod +x shell1.sh
#./shell1.sh #./意思是在当前的目录下找shell1.sh这个文件






