#! /bin/bash
#View System Information
#v0.1
echo "Hostname : $(hostname)"
echo "CPU Model Name : $(lscpu | grep "Model name" | perl -e 'for(<>){s/^.*: //;print}')"
echo "Current Speed in MHz : $(lscpu | grep MHz | perl -e 'for(<>){s/^.*: //;print}')"
echo "Network Address and Subnet : $(nmcli -p device show |grep -m1 IP4.ADDRESS | perl -e 'for(<>){s/^.*: //;print}')"
echo "----------------Free and total memory/swap space in Mb:------------------------"
 free -m
echo "----------------Free and total space on ext4/xfs partitions:-------------------"
df -T -t ext4 -t xfs -H

