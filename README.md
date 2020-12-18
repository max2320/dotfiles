# Dotfiles

This are the shortcuts and things I use on my bash terminal on linux.

**Fell free to clone, use it and share comments and suggestions**

## To install

```bash
$ git clone https://github.com/max2320/dotfiles.git ~/.config/dotfiles
$ echo "source ~/.config/dotfiles/.init" >> ~/.bash_profile
```


## Shortcuts

#### Git

```sh
# Checkout and pull to a branch
$ gckp <branch_name>

# Fresh checkout to a branch:
# - Remove the target branch
# - Checkout and pull to master
# - Checkout to the target branch
$ gckp <branch_name>

# Merge the current branch on the target branch
# - Fresh checkout to the target branch
# - Merge previous branch content
$ gckp <branch_name>
```

#### DOCKER COMPOSE

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


#### DOCKER

```bash
# Clear all containers logs
$ dk-clear-logs

#runs a temporary container from a image (local or remote)
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
$ dkr-<ruby|pyhton|node>-user [<shell|command>]
$ dkr-<ruby|pyhton|node>-nouser [<shell|command>]
$ dkr-<ruby|pyhton|node> [<shell|command>]

```
