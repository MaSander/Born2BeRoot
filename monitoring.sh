lvmUse=$(if [ $(lsblk | grep -c "lvm") -gt 0 ]; then echo Yes; else echo NO; fi)

ip=$(hostname -I | awk '{print $1}')
mac=$(ip link | grep "link/ether" | awk '{print $2}')

echo "#Architecture: $(uname -a)"
echo "#CPU physical: $(grep -c processor /proc/cpuinfo)"
echo "#vCPU: $(cat /proc/cpuinfo | grep processor | wc -l)"
echo "#Memory Usage: $(free --mega | grep "Mem." | awk '{print $3"/"$2"MB" " ("100*$3/$2"%)"}')"
echo "#Disk Usage: $(df -m --total | grep "total" | awk '{printf ("%i/%iMB (%s)", $3, $2, $5)}')"
echo "#CPU load: $(top -bn1 | grep "%Cpu" | awk '{printf ("%.1f%%", $1 + $2 + $3)}')"
echo "#Last boot: $(who -b | awk '{print $4, $5}')"
echo "#LVM use: $lvmUse"
echo "#Connections TCP: $(ss -s | grep "TCP[^:]" | awk '{print $2}')"
echo "#User log: $(users | wc -w)"
echo "#Network: IP $ip ($mac)"
echo "#Sudo : $(grep -c "COMMAND" /var/log/sudo/sudo.log) cmd"
