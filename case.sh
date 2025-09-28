#Enter the input value
read -p "Enter choice" choice
#Choice condition is used
#
case $choice in 
	1)
		journalctl -xe;; #To view the logs
	2)
		dmsg | tail -50;; #Another choice
	3)
		sudo cat /var/log/auth.log | tail -50 ;;
	4)
		sudo cat /var/log/syslog | tail -50 ;;
	5)
		echo "exiting";;
	*)
		echo "Invalid option";
esac 
