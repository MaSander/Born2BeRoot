echo "#Architecture: $(uname -a)"
echo "#CPU physical : $(grep -c processor /proc/cpuinfo)"
echo "#vCPU : $(cat /proc/cpuinfo | grep processor | wc -l)"
echo "#Memory Usage: $(free -m | grep "Mem." | awk '{print $3"/"$2"MB" " ("100*$3/$2"%)"}')"
echo "#Disk Usage"
echo "#CPU load: "
echo "#Last boot"
echo "#LVM use"
echo "#Connections TCP"
echo "#User log: $(w | grep -c "pts/")"
echo "#Network"
echo "#Sudo : $(grep -c "COMMAND" /var/log/sudo/sudo.log) cmd"
