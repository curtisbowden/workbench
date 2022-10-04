# workbench

  This docker build is designed to be similar to busybox or Windows subsystem for Linux, except that it has a tool set installed that is useful for network administration and troubleshooting tasks.  There is likely a better way to achieve this, but creation of this build was also an exercise in learning about docker.

### Build image

Directly from github.

    docker build -t curtisbowden/workbench https://github.com/curtisbowden/workbench.git

Locally from the project directory.

    docker build -t curtisbowden/workbench .

### Run container

Change directory `cd` to your home directory.
Note: DNS required for reverse lookups on Docker Desktop for Windows

Linux and Powershell

    docker run --rm -it --dns 1.1.1.1 -v ${PWD}:/code -w /code curtisbowden/workbench

Linux and Powershell (with .ssh folder and existing code folder)

    docker run --rm -it --dns 1.1.1.1 -v ${PWD}/.ssh:/root/.ssh -v ${PWD}/code:/code -w /code curtisbowden/workbench

Linux only

    docker run --rm -it --dns 1.1.1.1 -v $(PWD):/code -w /code  curtisbowden/workbench

Windows cmd

    docker run --rm -it --dns 1.1.1.1 -v %cd%:/code -w /code curtisbowden/workbench

Windows Terminal
```json
    {
        "commandline": "docker run --rm -it --dns 1.1.1.1 -v %USERPROFILE%/.ssh:/root/.ssh -v %USERPROFILE%/.gitconfig:/root/.gitconfig -v %USERPROFILE%:/home/%USERNAME% -w /home/%USERNAME%  curtisbowden/workbench",
        "guid": "{foo-bar-guid}",
        "icon": "C:\\Path\\to\\logo.png",
        "name": "docker (curtisbowden/workbench)"
    }
```
