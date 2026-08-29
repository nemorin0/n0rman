#/usr/bin/bash

systemctl enable xdm-archlinux
for user in `ls -1 /home`; do
		xsession="/home/${user}/.xsession"
		echo "awesome" >> $xsession
		chown ${user}:${user} $xsession
		chmod +x $xsession
done
