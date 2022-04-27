# Dotfiles

This are the shortcuts and things I use on my bash terminal on linux.

**Fell free to clone, use it and share comments and suggestions**

## To install

```bash
$ git clone https://github.com/max2320/dotfiles.git ~/.config/dotfiles
$ echo "source ~/.config/dotfiles/.init" >> ~/.bash_profile
```

## Project Auto-loader

The auto-loader the shortcuts to each file on the `custom/` folder using the pattern `lenv-<file_name>`

> By default the projects folder is `~/apps`, if you want to change edit the `DEFAULT_PROJECTS_FOLDER` on the settings file.
### To create a new project config file

You can create a new project config file running the create shortcut
```bash
$ prj_create_def <project-name>

# This will make the `lenv-` command available to jump to the project folder
$ lenv-<project>

# example
$ prj_create_def my-new-project
$ lenv-my-new-project
```
> Note: if the project folder does not exists it will be create when you run the lenv-.
## Shortcuts
### Git

```sh
# Checkout and pull to a branch
$ gckp <branch_name>

# Fresh checkout to a branch:
# - Remove the target branch
# - Checkout and pull to master
# - Checkout to the target branch
$ g_cls_ck <branch_name>

# Merge the current branch on the target branch
# - Fresh checkout to the target branch
# - Merge previous branch content
$ gck_merge <branch_name>
```

### DOCKER COMPOSE

```bash
# Alias for docker-compose
$ dkc <docker-compose args>

# print last lines of container(s) log
$ dkc-logs [<container>]

# Attach a terminal into a running docker-compose container
# NOTES: support all `docker-compose exec` params
$ dkcx <container> <shell>
$ dkcx-<bash|sh> <container>

# runs a temporary docker-compose container
# NOTES: support all `docker-compose run` params
$ dkc-run <container> <shell>

# runs a temporary docker-compose container with display
# NOTES: support all `docker-compose run` params
$ dkc-xrun <container> <shell>

# runs a temporary docker-compose container with test flags
# NOTE: there are flags only for ruby and node ony
$ dkctest <container> <shell|command>
$ dkct-<bash|sh> <container>

# runs a temporary docker-compose container with test flags and display
# NOTE: there are flags only for ruby and node ony
$ dkcxtest <container> <shell|command>
$ dkctx-<bash|sh> <container>
```

> **Test flags** can be updated by changing the DOCKER_COMPOSE_TEST_PARAMS var

> **Display support** can be updated by changing the DOCKER_COMPOSE_DISPLAY var and for now only supports linux with X Server


### DOCKER

```bash
# Clear all containers logs
$ dk-clear-logs

# runs a container from a image (local or remote) with it flag
$ dkrit <image>[:<tag>]
$ dkrit <image uri>

# runs a temporary container from a image (local or remote)
$ dkrtmp <image>[:<tag>]
$ dkrtmp <image uri>

# runs a temporary container from a image (local or remote)
# with the current dir and user configured
$ dkrtmpuser <image>[:<tag>] [<shell|command>]
$ dkrtmpuser <image uri> [<shell|command>]

# runs a temporary container from a image (local or remote)
# only with the current dir mounted
$ dkrtmpnouser <image>[:<tag>] [<shell|command>]
$ dkrtmpnouser <image uri> [<shell|command>]

# runs a temporary container from a image (local or remote)
#  with the current dir and root configured
$ dkrtmproot <image>[:<tag>] [<shell|command>]
$ dkrtmproot <image uri> [<shell|command>]

# USEFULL IMAGES SHORTCUTS
$ dkr-<preset_images>-user [<shell|command>]
$ dkr-<preset_images>-nouser [<shell|command>]
$ dkr-<preset_images> [<shell|command>]

```
> **preset_images** = ruby, pyhton, node, rust, postgres
> To add more images to the preset images edit the `DOCKER_PRESET_IMAGES` on the settings file


### KUBERNETES

```bash
# Alias for kubectl
$ kb <kubectl args>

# print current or swtich kubernets context
$ kb-ctx # print context
$ kb-ctx <context> # switch to context

# Get kubernetes components
$ kb-get # get all components
$ kb-get-<component type>
$ kb-get <component type>

# Kubernetes logs
$ kb-logs <resource name>

# Kubernetes all containers logs
$ kb-logsa <resource name>

# Kubernetes exec with interactive flags
$ kbx <resource name>

# Kubernetes exec rails console
$ kbx-rc <resource name>

# Kubernetes exec rails console
$ kbx-sh <resource name>

# Kubernetes exec rails console
$ kbx-bash <resource name>

# Kubernetes port forward
$ kb-pf <port-forward params>

```

### SSH

```bash
# Opens a background ssh tunnel
$ ssh_tunnel <port> <ssh_dsn>
```


### Random stuff

MacOS monterey VM inside docker using [sickcodes/docker-osx](https://github.com/sickcodes/Docker-OSX)
```
# Create MavOS vm
create_osx
> To set it up go to https://github.com/sickcodes/Docker-OSX#quick-start-docker-osx
> Tip: Restart after you do the setup wizard, this will significantly improve the UI response

# Start MacOS vm
start_osx

$ Force Stop MacOS vm
stop_osx
