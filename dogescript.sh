#!/bin/bash



#an alternative of searching the user input, see "Why doesn't if [ echo $foo | grep -q bar ] work?"
#on stack exchange, you can use double brackets








#thunar is default file browser
#~/.config/openbox/autostart.sh is where the startup script
#generally /home/cina/.config/
#or /etc/xdg/openbox/autostart.sh

#to copy stuff
#sudo cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml xfce4-keyboard-shortcuts.xml
#

#note you need spaces between [ ]

#I am not sure if a case switch will do what I want
#I want it to be be letters
#might have to make it a function, and have the data passed
#function sorts the letters?
#then it would be a fixed number of options,
#but that might be a waste of time writing a scenario for each string combination possible
#There might be a way around that
#If I have like 15 options for example, I would have to write like 15*15 amount?
#what if it was a case switch but each switch had a function that would test on
#whether the letter was inside a string

#actually if else might be better anyway
#if there is a search function, I can use an if for whatever options there is
#then it would go through each condition and complete it
#I would only have to modify the if conditions
#and have a search function before each choice

#also spit out the users selection first
#The computer took in "abcd", are you sure?
#then after each installation print that it was installed.

#also make the options go with the option
#try to make them all one letter

#test out looper logic for confirmation



#    #if statements need to be changed to read strings not numbers
#    #search syntax
#    #if [[ $c == *sg* ]]; then echo "it worked"; fi
#    #^this is case sensitive tho
#    #might be better to use grep so it is case insensitive
#    #if echo $c | grep -iq z; then echo "it worked"; fi
#    #^That's case insensitive
#    #pipes variable into grep
#    #-i ignores case
#    #-q does not write anything to output by default
#    #but will search out of a string?
#    #yes
#    #need a way to append to a string that is in each of these statements
#    #and then print out that long string after all this
#    # use +=
#    # x="a"
#    # x+="b"
#    # echo $x
#    # ab
#    #               *SYNTAX*
#    #note that declaring variables requires no space
#    #but if statements do
#    #you don't need quotations for strings at all, but you can
#    #you can also put variables inside quotations, as long as you use $
##    
#    #how should I print it, new line for each?
#    #saying installed in each would be annoying
##    
#    #           Option names
#    #If you get too many options, multiples or have issue making option names
#    #might want to make some stuff case sensitive SO that they know where a phrase starts
#    #so Sa, As
#    #Thing is if you make something multi character
#    #but have a single character option
#    #then it'll get confused, if you have multiple strings that start
#    #with a single letter, then make all of them multicharacter
#    #You also have to watch out for phrases that end or start with certain characters
#    #for example if you have AS
#    #You probably shouldn't have SA?
#    #Maybe keep grep? this way if I want to expand search, it is easier
##    
###    
##echo -e "\e[1;34mThis is a blue text.\e[0m"
## you need -e for that as well as that code

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
sudo apt-get -y install autojump
#sudo apt-get -y install pepperflashplugin-nonfree
#Laptop was having issues, I installed this and issue was still not fixed

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
echo ". /usr/share/autojump/autojump.sh" >> ~/.bashrc
#^Appends autojump to get it to work
}



linuxmintrepos()
{
sudo sh -c 'echo "deb http://packages.linuxmint.com/ qiana main" >> /etc/apt/sources.list.d/mint.list'
sudo apt-get update
sudo apt-get install -y --force-yes linuxmint-keyring mintstick

#gotta test if this works without asking for yes
}

asusn13driver()

#gotta fix this and make it local so that if it is removed from github, it still works
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

codecs()
{
sudo apt-get -y install xubuntu-restricted-extras
sudo apt-get -y install libavcodec-extra
sudo apt-get install -y libdvdread4
sudo /usr/share/doc/libdvdread4/install-css.sh
}




installt440()
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
#sudo cp xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
sudo cp xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/
}

#an auto backup function would be cool

lampgit()
{
sudo apt-get install -y git
sudo apt-get install apache2 mysql-server php5 libapache2-mod-php5
sudo /etc/init.d/apache2 restart
php -r 'echo "\n\nYour PHP installation is working fine.\n\n\n";'
}

#find a way to make this into the above function, take user input and pass this into that function
#sudo chown -R username:group /var/www
#replace username:group with the username:username
#also maybe configurating :
#  git config --global user.email "you@example.com"
#  git config --global user.name "Your Name"



n=1
while [ $n  -eq  1 ] #this variable n tests whether the user still wants the program to run
do
	echo -e "Type in a \e[1;34mphrase\e[0m containing each installation element you'd like to install."
	echo -e "Base install = \e[1;34mBi\e[0m "
	echo -e "Mint repos = \e[1;34mMr\e[0m"
	echo -e "LAMP and Git = \e[1;34mLa\e[0m"
	echo -e "Asusn13 driver = \e[1;34mAw\e[0m"
	echo -e "Internal Laptop Wifi driver for t440 = \e[1;34mLw\e[0m"
	echo -e "Spotify = \e[1;34mSp\e[0m"
	echo -e "Android studio = \e[1;34mAs\e[0m"
	echo -e "Xfce4 shortcuts = \e[1;34mXs\e[0m"
	echo
    echo "NOTE: These are case sensitive. You can have white space between phrases or not."
    echo "All phrases start with a capital and end with a lowercase"
    echo "LAMP installation requires the user to setup mysql so, do NOT leave the computer"
    echo	
	read choice
    echo "You wrote '" $choice "' Are you sure?"
    echo "Type y to continue or anything else to restart"
    read confirm   
    if echo $confirm | grep -q y;
    then
        installed=""
        #declare it first but empty
        if echo $choice | grep -q Bi;
        then
            baseinstall
            installed+=" Base install- "
        fi
        if echo $choice | grep -q Mr;
        then
            linuxmintrepos
            installed+=" Linux Mint repos- Mintstick, Mintformat- "
        fi
	if echo $choice | grep -q La;
	then
	    lampgit
	    installed+=" Lamp & Git installation"
	fi
        if echo $choice | grep -q Aw;
        then
            asusn13driver
            installed+=" Asusn13 driver- "
        fi
        if echo $choice | grep -q Lw;
        then
            installt440
            installed+=" T440 Driver- "
        fi
        if echo $choice | grep -q Sp;
        then
            spotify
            installed+=" Spotify- "
        fi
        if echo $choice | grep -q As;
        then
            androidstudio
            installed+=" Android Studio- "
        fi
        if echo $choice | grep -q Xs;
        then
            xfce4shortcuts
            installed+=" XFCE4 keyboard shortcuts"
        fi
        echo "The following software was installed: "
        echo
        echo $installed
        echo "If you would like to keep going, type in 1, if not, type in any other number"
        read n
    else
        echo "Program will restart"
    fi
#I'd like to add a list of whatever you instaled here. There's got to be a way to store it.
done

