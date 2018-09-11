Welcome to the make_me_perm wiki!

This is a very simple script which will ask user for a new variable name and then a value. It will then write the variable and its value to: ~/.bashrc ~/.profile /etc/environment

It will then ask if you want to reboot or not.

I've modified this from an original post of the script here: https://stackoverflow.com/questions/13046624/how-to-permanently-export-a-variable-in-linux and created by: https://stackoverflow.com/users/1430342/e-soroush

I'm going to keep updating this base script to make it more interactive and useful.

How to use:
- just download the script, change it to executable and run.
- 1st input is name of variable (e.g. MYVAR)
           - note:  do NOT place $ before variable name...
- 2nd input is the value you want for this variable
   - this can be any value you'd like

note:  you need to run sudo if you want the /etc/environment variable to take (e.g. sudo ./make_me_perm.sh

To-dos:

provide option to source .bashrc and .profile so they become immediately active
command line option to choose which destination (.bashrc, .profile, /etc/environment)
option to remove a variable

