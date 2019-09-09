qw=$(nc -z -v $1 $2 2>&1 | grep open)
if [[ ! -z "$qw" ]] ; then
echo $2 >> $1
echo $1 >> $2
else 
exit
fi
