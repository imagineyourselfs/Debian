# good bit
find / -xdev -type d \( -perm -0002 -a ! -perm -1000 \) -print
# if results: chmod +t /folder 

# find readable logs 
find /var/log -perm -o=r ! -type l
# if positive: chmod -R 640 /var/log

find / -xdev -type f -perm -0002 -print 
find / -path /proc -prune -o -perm -2 ! -type l -ls
# if positive: chmod o-w files 

find / -xdev -user root \( -perm -4000 -o -perm -2000 \)
# if positive: chmod -s file 

#find / -xdev -type d -perm -0002 -uid +500 -print
# List .tar packages that are larger than 100 megabytes 
#find / -type f -name *.tar.gz -size +100M -exec ls -l {} \;


# Delete any tmp files older than 24hrs:
find /tmp -type f \( ! -user root \) -atime +1 -print -delete
fstrim -av 
