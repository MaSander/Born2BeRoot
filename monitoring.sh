echo "#Architecture: $(uname -a)"
echo "#CPU physical : "
echo "#vCPU"
echo "#Memory Usage"
echo "#Disk Usage"
echo "#CPU load: $(top -bn1 | grep "Cpu(s)" |
        sed "s/.*, *\([0-9.]*\)%* id.*/\1/\" |
        awk '{print 100 - $1"%"}')"
echo "#Last boot"
echo "#LVM use"
echo "#Connections TCP"
echo "#User log: $(w | grep -c "pts/")"
echo "#Network"
echo "#Sudo : $(sudo grep -c "COMMAND" /var/log/sudo/sudo.log) cmd"
