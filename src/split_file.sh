#只适用于当前目录下只有一个文件的情况,如果存在多个文件可以先和成一个文件(ls G*|xargs -n1 cat >> prefix)，再用该脚本分割
#split默认的最大分割文件数为676(26*26),-a参数可以自定义文件数（4表示四个字符长度）
file=$(ls *.txt); 
file1=0310000GJYY000010430020140731225800 ##分割后的文件名前缀
split -l 10000 -a 4 $file tmp_;
mkdir -p splitbak;
mv $file splitbak;
ls tmp_*|awk '{printf("mv %s %s%04s\n", $0,f, NR)}' f="$file1" > mv.sh
sh mv.sh
rm mv.sh
