-Seperate codecs from applications
-Seperate developer tools from applications
	-Give a choice on what to install, what ide/editor etc?
	-BUT put komodo and gedit
-Seperate xfce4 shortcuts from everything else
-Make it clear that this is for ubuntu and debian


-Need error reporting if any of this fails and to say what fails

- auto install xampp to htdocs chown thingy

-replace all those if then fi with some sort of case switch style statements


# UI Features
- Y to continue should be case insensitive

# Apps To Add


__________________________________________________________________________________________
-Need to automatically install auto jump, aside from

"This will install autojump but to use it you need to configure your shell to
 source autojump.sh on startup. If you’re use Bash, then add the following line
to your ~/.bashrc file. The same line will work for Zsh if you add it to ~/.zshrc."

I can append to the end of a file

this command to be appended:

. /usr/share/autojump/autojump.sh


~/.bashrc . /usr/share/autojump/autojump.sh



echo ". /usr/share/autojump/autojump.sh" >> ~/.bashrc

APPENDED!!!!
WORKS



old notes






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
