# Dotfiles

This are the shortcuts and things I use on my bash terminal on linux.

**Fell free to clone, use it and share comments and suggestions**


## Shortcuts

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
$ dkc-test <container> <shell|command>
$ dkct-<bash|sh> <container>

# runs a temporary docker-compose container with test flags and display
# NOTE: there are flags only for ruby and node ony
$ dkc-xtest <container> <shell|command>
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
$ dkrtmp-user <image>[:<tag>] [<shell|command>]
$ dkrtmp-user <image uri> [<shell|command>]

# runs a temporary container from a image (local or remote)
# only with the current dir mounted
$ dkrtmp-nouser <image>[:<tag>] [<shell|command>]
$ dkrtmp-nouser <image uri> [<shell|command>]

# USEFULL IMAGES SHORTCUTS
$ dkr-<ruby|pyhton|node>-user [<shell|command>]
$ dkr-<ruby|pyhton|node>-nouser [<shell|command>]
$ dkr-<ruby|pyhton|node> [<shell|command>]

```
