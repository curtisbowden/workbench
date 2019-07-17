# workbench

  This docker build is designed to be similar to busybox or Windows subsystem for Linux, except that it has a tool set installed that is useful for network administration and troubleshooting tasks.  There is likely a better way to achieve this, but creation of this build was also an exercise in learning about docker.
  
### Build container

Directly from github.

    docker build -t curtisbowden/workbench https://github.com/curtisbowden/workbench.git
    
Locally from the project directory.

    docker build -t curtisbowden/workbench .
    
### Run container

Change directory `cd` to your home directory.

Linux and Powershell
    
    docker run --rm -it -v ${PWD}:/code -w /code -e "TERM=xterm-256color" curtisbowden/workbench
    
Linux only

    docker run --rm -it -v $(PWD):/code -w /code -e "TERM=xterm-256color" curtisbowden/workbench
    
Windows cmd

    docker run --rm -it -v %cd%:/code -w /code -e "TERM=xterm-256color" curtisbowden/workbench
