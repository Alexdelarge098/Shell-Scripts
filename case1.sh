read -p "Enter the software name:" software

read -p "Enter the choice (1 (or) 2)" choice

case "$choice" in 
	1)
		sudo apt install "$software";;
	2)
		sudo apt remove "$software";;
	*)
		echo "Invalid choice, please select 1 (or) 2"
		exit 1 ;;
esac

