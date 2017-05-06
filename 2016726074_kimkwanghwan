num=1

for a in *
do

if [ -d "$a" ]
then
export a
n1=$(echo [34m `stat -c %F $a`)

export f=`echo [0m`
echo "[$num]  $a"
echo "----------------------INFORMATION------------------------"
echo "file type: $n1 $f"
echo "file size: `stat -c %B $a`"
echo "creation time: `stat -c %z $a`"
echo "permission: `stat -c %a $a`"
echo "absolute path: `pwd`/$a"
echo "relative path: ./$a"
echo "---------------------------------------------------------"
num=`expr $num + 1`

./sun.sh

fi

done

for b in *
do
export b
if [ -f "$b" ]
then
n2=$(echo `stat -c %F $b`)
echo "[$num]  $b"
echo "----------------------INFORMATION------------------------"
echo "file type: $n2 $f"
echo "file size: `stat -c %B $b`"
echo "creation time: `stat -c %z $b`"
echo "permission: `stat -c %a $b`"
echo "absolute path: `pwd`/$b"
echo "relative path: ./$b"
echo "---------------------------------------------------------"
num=`expr $num + 1`
fi

done

for c in *
do
export c


if [ ! -f "$c" ] && [ ! -d "$c" ]
then



n3=$(echo [32m `stat -c %F $c`)
echo "[$num]  $c"
echo "----------------------INFORMATION------------------------"
echo "file type: $n3 $f"
echo "file size: `stat -c %B $c`"
echo "creation time: `stat -c %z $c`"
echo "permission: `stat -c %a $c`"
echo "absolute path: `pwd`/$c"
echo "relative path: ./$c"
echo "---------------------------------------------------------"
num=`expr $num + 1`
fi
done
