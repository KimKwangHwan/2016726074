num=1
cd $a

for var1 in *

do
if [ -d "$var1" ]
then
k1=$(echo [34m `stat -c %F $var1`)
echo "		[$num]  $var1"
echo "		---------------------------INFORMATION------------------"
echo "		file type: $k1 $f"
echo "		file size: `stat -c %B $var1`"
echo "		creation time: `stat -c %z $var1`"
echo "		permission: `stat -c %a $var1`"
echo "		absolute path: `pwd`/$var1"
echo "		relative path: ./$a/$var1"
echo "		----------------------------------------------------------"
num=`expr $num + 1`
fi

done


for var2 in *

do
if [ -f "$var2" ]
then
k2=$(echo `stat -c %F $var2`)
echo "		[$num]  $var2"
echo "		---------------------------INFORMATION---------------------"
echo "		file type: $k2 $f"
echo "		file size: `stat -c %B $var2`"
echo "		creation time: `stat -c %z $var2`"
echo "		permission: `stat -c %a $var2`"
echo "		absolute path: `pwd`/$var2"
echo "		relative path: ./$a/$var2"
echo "		------------------------------------------------------------"
num=`expr $num + 1`
fi

done

for var3 in *
do
if [ ! -f "$var3" ] && [ ! -d "$var3" ] && [ ! "$var3" = "*" ]
then
k3=$(echo [32m `stat -c %F $var3`)
echo "		[$num]  $var3"
echo "		--------------------------INFORMATION-----------------------"
echo "		file type: $k3 $f"
echo "		file size: `stat -c %B $var3`"
echo "		creation time: `stat -c %z $var3`"
echo "		permission: `stat -c %a $var3`"
echo "		absolute path: `pwd`/$var3"
echo "		relative path: ./$a/$var3"
echo "		------------------------------------------------------------"
num=`expr $num + 1`
fi
done
cd ..
