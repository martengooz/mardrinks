#!/bin/bash
echo "This script applies the temporay solution found on https://unix.stackexchange.com/questions/13751/kernel-inotify-watch-limit-reached"

. /etc/os-release

isfixapplied() {
	lastrow=$( tail -n 1 /etc/sysctl.conf)
	if [[ $lastrow =~ fs\.inotify\.max_user_watches=.+ ]]; then
		return 0;
	else
		return 1;
	fi
}

tempfix() {
	echo "Running temporary fix for all Linux OS. This will reset after a reboot."
	echo "Current value: $(sysctl fs.inotify.max_user_watches)"
	sysctl fs.inotify.max_user_watches=60000
	echo "New value: $(sysctl fs.inotify.max_user_watches)"
}

permfix() {
	echo "Running permanent fix. This will edit /etc/sysctl.conf."
	echo "A backup will be saved at /etc/sysctl.conf.bak"
	echo "Backing up..."
	#cp /etc/sysctl.conf /etc/sysctl.conf.bak
	if [ $? -ne 0 ]; then
    echo "Could not create a backup. Is /etc/sysctl.conf preotected or not existing?"
		exit 1
	fi
	echo "Adding fix..."
	echo "fs.inotify.max_user_watches=60000" >> /etc/sysctl.conf
	if [ $? -ne 0 ]; then
    echo "Could not add the fix. Check if /etc/sysctl.conf is protected or not existing or manually add \"fs.inotify.max_user_watches=60000\" to the file."
		exit 1
	fi

	lastrow=$( tail -n 1 /etc/sysctl.conf)
	if isfixapplied; then
		sysctl -p
		echo "Successfully applied."
		exit
	else
		echo "The fix is not the last item in /etc/sysctl.conf. Check if \"fs.inotify.max_user_watches=60000\" is present in the file."
		exit 1
	fi

	echo "Running this multiple times is not recommended."
	echo "Applied successfully"
}


oscheck() {
	if [ $ID_LIKE = ubuntu ] || [$ID_LIKE = redhat] || [ $ID_LIKE = debian ] || [ $ID = debian ] || [ $ID = ubuntu ] || [$ID = redhat]; then
		permfix
		exit
	else
	  echo "Could not establish the OS type or not Debian/Redhat based."
		echo -n "Proceed anyway? [y/n]: "
		read ans
		if [$ans = y]; then
			permfix
			exit
		else
			exit
		fi
	fi
}

if [ "$EUID" -ne 0 ]
  then echo "Must be root."
  exit 1
fi

if isfixapplied; then
	echo "Permanent fix is already in place. If it's still not working after a reboot, there might be another problem."
	exit
fi

while [ ! $# -eq 0 ]
do
	case "$1" in
		--temp | -t)
			tempfix
			exit
			;;
		--permanent| -p)
			oscheck
			permfix
			exit
			;;
	esac
	shift
done

tempfix

exit
