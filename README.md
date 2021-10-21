# buildock
Tiny shell script encapsulates builds in docker. No dependency installation for the build. 100% reproducable.

Different software or compiler versions like *make* vs. *cmake*, *node*, *python2*, *python3* lead to problems when building. Builddock makes complex builds hassle free and reliably work on a wide range of different host systems. The build is in docker, but your actual application's files are locally on the host system ad can be used there.


## Try it
```sh
# add builddock to your current shell - not persistent!
source /dev/stdin < <(curl -fsSL https://techoverflow.net/install-buildock.sh)

# Example: compile a C++ application within the docker image
# run this in your application folder where you want to build
buildock ulikoehler/ubuntu-gcc-make make
```

## Install
Add [`buildock` function](https://github.com/ulikoehler/buildock/blob/master/buildock.sh) permanent to shell.

For `bash`:
```sh
curl -fsSL https://raw.githubusercontent.com/ulikoehler/buildock/master/buildock.sh >> ~/.bashrc
```

For `zsh`:
```sh
curl -fsSL https://raw.githubusercontent.com/ulikoehler/buildock/master/buildock.sh >> ~/.zshrc
sed -i -e 's/export -f buildock/#export -f buildock/g' ~/.zshrc
```

This function will be automatically loaded once you restart your shell. To load `buildock` in already active shells, run `source ~/.bashrc` or `source ~/.zshrc`, else you'll see `command not found: buildock`


## How to use

```sh
# general schema
buildock [docker run argument(s)] <image name> <command(s)>
```
```sh
# Examples

# Compile a C++ application using `make`
buildock ulikoehler/ubuntu-gcc-make make

TODO: add more examples for pre-built docker images


```


```sh
# interative mode
buildock -it ulikoehler/ubuntu-gcc-make make
```

By default, *buildock* does not enable interactive mode (`docker run --interactive/-i`) or allocate a pseudo-TTY (`docker run --tty/-t`) to facilitate easy automated builds in non-TTY environments like Gitlab runners.
In case you need to run in **interactive mode** (e.g. if you need to interact with the program being run), use this syntax:



## How to make custom *buildock* images

Just use any docker container with the software you need installed. The only requirement is that `/app` is not used for anything relevant in the image, since `/app` is where `buildock` will mount the current directory to.


## How does it work?
*buildock* provides two tools:
 - The shell function `buildock` that wraps `docker` to facilitate easy local builds
 - Several pre-built docker images that have software like `make` and `gcc`. These images are just for convenience!

The *buildock* shell function creates a new container using the given image and mounts the current working directory (`$(pwd)`) to `/app` on said container. It then runs the user-defined command on the container (e.g. `make`).
Additionally it ensures that the `docker` container runs under the current user using `--user $(id -u):$(id -g)`. This prevents the output files (if any) to be created as `root` user, instead they will be created with the user and group running `buildock`.


## Tips, tricks & limitation

#### npm install fails

```
buildock ulikoehler/ubuntu-opencascade-node:12 npm install
```

This fails with
```
npm ERR! path /.npm
npm ERR! code EACCES
npm ERR! errno -13
npm ERR! syscall mkdir
npm ERR! Error: EACCES: permission denied, mkdir '/.npm'
npm ERR!  [Error: EACCES: permission denied, mkdir '/.npm'] {
npm ERR!   stack: "Error: EACCES: permission denied, mkdir '/.npm'",
npm ERR!   errno: -13,
npm ERR!   code: 'EACCES',
npm ERR!   syscall: 'mkdir',
npm ERR!   path: '/.npm'
npm ERR! }
npm ERR!
npm ERR! The operation was rejected by your operating system.
npm ERR! It is likely you do not have the permissions to access this file as the current user
npm ERR!
npm ERR! If you believe this might be a permissions issue, please double-check the
npm ERR! permissions of the file and its containing directories, or try running
npm ERR! the command again as root/Administrator (though this is not recommended).
```
The reason for this is that the current user's ID does not have a home directory on the container and therefore npm tries to access `/.npm` for its cache, which it can't create.

**Workaround:** Use `-e HOME=/tmp` to define a home dir or update buildock since this is the default in more recent versions.


## More reading
The post on techoverflow that started it all: [Towards a docker-based build of C/C++ applications](https://techoverflow.net/2019/06/27/towards-a-docker-based-build-of-c-c-applications/)
