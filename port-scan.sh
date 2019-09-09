for file in `pwd`/*; do
match=`echo ${file##*/} | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}'`
if [ $? -eq 0 ];
then var="${file##*/}"
#echo -e "$var\n$(cat $var)\n"
#awk '{print $1","}' $var | tr -d '[\n]' | xargs echo -e "$var\n"
nmap -Pn -n -A $var -p $(awk '{print $1","}' $var | tr -d '[\n]' | xargs echo) -oN `pwd`/port/$var
fi
done