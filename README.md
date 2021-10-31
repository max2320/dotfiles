# Dotfiles

This are the shortcuts and things I use on my bash terminal on linux.

**Fell free to clone, use it and share comments and suggestions**

## To install

```bash
$ git clone https://github.com/max2320/dotfiles.git ~/.config/dotfiles
$ echo "source ~/.config/dotfiles/.init" >> ~/.bash_profile
```


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

```

### SSH
```bash
# Opens a background ssh tunnel
$ ssh <port> <ssh_dsn>
```

### Auto-loader

The auto-loader creates the shortcuts to each file on the `custom/` folder using the pattern `lenv-<file_name>`
