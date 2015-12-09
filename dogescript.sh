#!/bin/bash


clear
echo Hello. Hola. Bonjour. Salam Aleikum. Shalom Alekum.
echo 
echo
echo "
─────────▄──────────────▄
────────▌▒█───────────▄▀▒▌
────────▌▒▒▀▄───────▄▀▒▒▒▐
───────▐▄▀▒▒▀▀▀▀▄▄▄▀▒▒▒▒▒▐
─────▄▄▀▒▒▒▒▒▒▒▒▒▒▒█▒▒▄█▒▐
───▄▀▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▀██▀▒▌
──▐▒▒▒▄▄▄▒▒▒▒▒▒▒▒▒▒▒▒▒▀▄▒▒▌
──▌▒▒▐▄█▀▒▒▒▒▄▀█▄▒▒▒▒▒▒▒█▒▐
─▐▒▒▒▒▒▒▒▒▒▒▒▌██▀▒▒▒▒▒▒▒▒▀▄▌
─▌▒▀▄██▄▒▒▒▒▒▒▒▒▒▒▒░░░░▒▒▒▒▌
─▌▀▐▄█▄█▌▄▒▀▒▒▒▒▒▒░░░░░░▒▒▒▐
▐▒▀▐▀▐▀▒▒▄▄▒▄▒▒▒▒▒░░░░░░▒▒▒▒▌
▐▒▒▒▀▀▄▄▒▒▒▄▒▒▒▒▒▒░░░░░░▒▒▒▐
─▌▒▒▒▒▒▒▀▀▀▒▒▒▒▒▒▒▒░░░░▒▒▒▒▌
─▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐
──▀▄▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▄▒▒▒▒▌
────▀▄▒▒▒▒▒▒▒▒▒▒▄▄▄▀▒▒▒▒▄▀
───▐▀▒▀▄▄▄▄▄▄▀▀▀▒▒▒▒▒▄▄▀
──▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▀▀
"
echo "Welcome to Cina's Post-install linux script."
echo dogeislove
echo dogeislife
echo


#You should also announce what is installed
baseinstall()
{
sudo ufw enable
sudo add-apt-repository -y ppa:numix/ppa
sudo add-apt-repository -y ppa:rebuntu16/other-stuff 
sudo add-apt-repository -y ppa:noobslab/icons
sudo add-apt-repository -y ppa:ravefinity-project/ppa
sudo add-apt-repository -y ppa:webupd8team/java


sudo apt-get update
sudo apt-get -y install oracle-java8-installer
sudo apt-get -y install gedit
sudo apt-get -y install xubuntu-restricted-extras
sudo apt-get -y install libavcodec-extra
sudo apt-get -y install idle3
sudo apt-get -y install wine
sudo apt-get -y install python3
sudo apt-get -y install openjdk-7-jdk
sudo apt-get -y install icedtea-7-plugin
sudo apt-get -y install openjdk-7-jre
sudo apt-get -y install xfce-theme-manager
sudo apt-get -y install numix-gtk-theme
sudo apt-get -y install numix-icon-theme
sudo apt-get -y install numix-icon-theme-circle
#sudo apt-get -y install pepperflashplugin-nonfree
#Laptop was having issues, I installed this and issue was still not fixed


sudo apt-get install -y libdvdread4
sudo /usr/share/doc/libdvdread4/install-css.sh
sudo apt-get install -y comix
sudo apt-get -y install rar
sudo apt-get -y install vlc
sudo apt-get -y install higan
sudo apt-get install -y pulseaudio-module-bluetooth
sudo apt-get install -y vibrancy-colors
sudo apt-get install -y exaile
sudo apt-get -y remove thunderbird banshee pidgin gmusicbrowser parole mousepad




#So here there is an if else statement.
#The script requests the cpu info
#then downloads the appropriate deb

cd /tmp

if uname -i | grep -q x86_64
then wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*; sudo apt-get -f -y install
else wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
fi

#it actually installs it here
#note that it installs it indiscriminantly. 
sudo dpkg -i google-chrome*; sudo apt-get -f -y install

wget http://www.bluej.org/download/files/bluej-311.deb
sudo dpkg -i bluej*; sudo apt-get -f -y install
}


linuxmintrepos()
{
sudo sh -c 'echo "deb http://packages.linuxmint.com/ qiana main" >> /etc/apt/sources.list.d/mint.list'


sudo apt-get update

sudo apt-get install linuxmint-keyring

#this is Qiana repo btw, you'll get an error after the update
#you can't do -y for the keyring

sudo apt-get update

#now install w.e

sudo apt-get install -y mintstick
}

asusn13driver()

#gotta fix this and make it local
{
echo "You need the internet for this to work"

sudo apt-get install -y linux-headers-generic build-essential dkms
sudo apt-get install -y git
git clone https://github.com/pvaret/rtl8192cu-fixes.git
sudo dkms add ./rtl8192cu-fixes
sudo dkms install 8192cu/1.9
sudo depmod -a
sudo cp ./rtl8192cu-fixes/blacklist-native-rtl8192.conf /etc/modprobe.d/
echo "And reboot. You're done."

}

standardopenbox()
{
sudo apt-get install -y openbox tint2 obconf obmenu
sudo apt-get install -y nitrogen alsamixergui lxappearance

sudo mkdir ~/.config/openbox/
sudo cp ./backup/menu.xml ~/.config/openbox/
sudo mkdir ~/.config/tint2/
sudo cp ./backup/tint2rc ~/.config/tint2/
sudo cp -r ./backup/tint2wizard ~
sudo cp ./backup/autostart /etc/xdg/openbox/

#thunar is default file browser
#~/.config/openbox/autostart.sh is where the startup script
#generally /home/cina/.config/
#or /etc/xdg/openbox/autostart.sh
}

xfceopenbox()
{
sudo apt-get install -y openbox tint2 obconf obmenu
sudo apt-get install -y nitrogen alsamixergui lxappearance

sudo mkdir ~/.config/openbox/
sudo cp ./xfce4panelbackup/menu.xml ~/.config/openbox/
sudo mkdir ~/.config/tint2/
sudo cp ./xfce4panelbackup/tint2rc ~/.config/tint2/
sudo cp -r ./xfce4panelbackup/tint2wizard ~
sudo cp ./xfce4panelbackup/autostart /etc/xdg/openbox/
}

backupstandopenbox()
{
sudo mkdir ./backup/
sudo cp ~/.config/openbox/menu.xml ./backup/
sudo cp ~/.config/tint2/tint2rc ./backup/
sudo cp -r ~/tint2wizard ./backup/
sudo cp /etc/xdg/openbox/autostart ./backup/
}

backupxfc4openbox()
{
sudo mkdir ./xfce4panelbackup/
sudo cp ~/.config/openbox/menu.xml ./xfce4panelbackup/
sudo cp ~/.config/tint2/tint2rc ./xfce4panelbackup/
sudo cp -r ~/tint2wizard ./xfce4panelbackup/
sudo cp /etc/xdg/openbox/autostart ./xfce4panelbackup/


}

installinternal()
{
cd ./internal/rtlwifi_new-master/
sudo make
sudo make install

}


androidstudio()
{
sudo apt-add-repository -y ppa:paolorotolo/android-studio
sudo apt-get install -y android-studio
}

spotify()
{
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free" && 
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59 && 
sudo apt-get update -qq && 
sudo apt-get --force-yes install spotify-client
}

xfce4shortcuts()
{
sudo cp xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml

}


#to copy stuff
#sudo cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml xfce4-keyboard-shortcuts.xml
#
n=1
#note you need spaces between [ ]
while [ $n  -eq  1 ]
do
	echo "Type in the corresponding numbers to install the corresponding thingie"
	echo "Base install = 1"
	echo "Mintrepos = 2"
	echo "Asusn13 driver = 3"
	echo "Internal Laptop Wifi = 4"
	echo "Install Standard openbox=5"
	echo "Install Xfceopenbox=6"
	echo "Backing up standard open box config = 7"
	echo "Backing up openboxfce = 8"
	echo "install spotify = 9"
	echo "Install android studio = 10"
	echo "Install xfce4 shortcuts = 11"
	echo
	read choice
	if [ "$choice" -eq 1 ]
	then
	 	baseinstall
	fi
 	if [ "$choice" -eq 2 ]
	then
  		linuxmintrepos
	fi
 	if [ "$choice" -eq 3 ]
	then
 		asusn13driver
	fi
 	if [ "$choice" -eq 4 ]
	then
  		installinternal
	fi
 	if [ "$choice" -eq 5 ]
	then
  		standardopenbox
	fi
 	if [ "$choice" -eq 6 ]
	then
  		xfceopenbox
	fi
 	if [ "$choice" -eq 7 ]
	then
  		backupstandopenbox
	fi
 	if [ "$choice" -eq 8 ]
	then
  		backupxfc4openbox
	fi
	if [ "$choice" -eq 9 ]
	then
  		spotify
	fi
	if [ "$choice" -eq 10 ]
	then
  		androidstudio
	fi

	if [ "$choice" -eq 11 ]
	then
		xfce4shortcuts
	fi

	echo "You installed: "
 	if [ "$choice" -eq 1 ]
	then
  		echo "baseinstall"
	fi
 	if [ "$choice" -eq 2 ]
	then
  		echo "linuxmintrepos"
	fi
 	if [ "$choice" -eq 3 ]
	then
  		echo "asusn13driver"
	fi
 	if [ "$choice" -eq 4 ]
	then
  		echo "internal laptop"
	fi
 	if [ "$choice" -eq 5 ]
	then
  		echo "standardopenbox"
	fi
 	if [ "$choice" -eq 6 ]
	then
  		echo "xfceopenbox"
	fi
 	if [ "$choice" -eq 7 ]
	then
  		echo "backupstandopenbox"
	fi
 	if [ "$choice" -eq 8 ]
	then
  		echo "backupxfc4openbox"
	fi
	if [ "$choice" -eq 9 ]
	then
  		echo "spotify"
	fi
	if [ "$choice" -eq 10 ]
	then
  		echo "androidstudio"
	fi
	if [ "$choice" -eq 11 ]
	then
		echo "xfce4 shortcuts"
	fi
	echo "If you would like to keep going, type in 1, if not, type in any other number"
read n
#I'd like to add a list of whatever you instaled here. There's got to be a way to store it.
done

