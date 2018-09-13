# add debug messaging to your bash scripts

shows how to add a function ('debug()') to your scripts which enables the use of debug messaging
to document the execution flow of your bash script.  You control whether it is turned on or off
by setting DEBUGON to 0 or 1.   Set to 0 and its turned on.  Set to 1 and its turned off.\

#Example of how to use

you have a script with the command ls -l and you have a debug message you want to put to the console output
of "i am about to run ls -l command"

DEBUGON=0  # turn debug messages on or off

debug && echo "i am about to run ls -l command"
ls -l

debug && echo "i am about to run cd /my/dir"
cd /my/dir

debug(){
    return $DEBUGON
    }
    
With the above examples:
if you set DEBUGON=1, console output would be
ls -l
    .... list of what is in the current directory
cd /my/dir
    ... console will change directories from current directory to /my/dir
    
if you set DEBUGON=0, console output would be

i am about to run ls -l command
ls -l
    .... list of what is in the current directory
i am about to run cd /my/dir
cd /my/dir
    ... console will change directories from current directory to /my/dir
