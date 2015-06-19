echo "\$\@"$@
echo "\$#"$#
echo "\$*"$*
a=(1 2 4 4 5)
index=0;
while [ $index -lt ${#a[*]} ]
 do
	echo "${a[$index]}"
	let index++
 done

for var in ${a[*]};
do
	echo  $var
done

for var in ${!a[@]};
do
	echo "${a[$var]}"
done

