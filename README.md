# buildock
*Reproducible build environments for local builds using Docker*

Do you need to make your builds (e.g. using *make* and *cmake*) or software (e.g. using *node* or *python3*) to reliably work on a wide range of different host systems, but you still want to keep your actual application's files locally on the host system?

`buildock` creates a new docker container from an image and mounts the current working directory ($(pwd)) to `/app` in the container. This enables reliable builds (e.g. using `make` and `cmake`) or the use of specific versions of software (e.g. using `node` or `python3`) working on a wide range of host systems, but **keeps your actual files locally on the host system**.

## What does it do?

*buildock* provides two sets of tools:
 - A shell function `buildock` that wraps `docker` to facilitate easy local builds
 - Several pre-built docker images that have software like `make` and `gcc`. These images are just for convenience!

## How to install

**If you just want to try it out:**
```sh
git clone https://github.com/ulikoehler/buildock
source buildock/buildock.sh
```

**Permanent installation:**
Add the script to your personal shell:

For `bash`:
```sh
curl -fs SLhttps://raw.githubusercontent.com/ulikoehler/buildock/master/buildock.sh >> ~/.bashrc
```

For `zsh`:
```sh
curl -fsSL https://raw.githubusercontent.com/ulikoehler/buildock/master/buildock.sh >> ~/.zshrc
sed -i -e 's/export -f buildock/#export -f buildock/g' ~/.zshrc
```

This will add a [`buildock` function](https://github.com/ulikoehler/buildock/blob/master/buildock.sh) to your `~/.bashrc` or  `~/.zshrc`.

This function will be automatically loaded once you restart your shell. To load `buildock` in already active shells, run `source ~/.bashrc` or `source ~/.zshrc`, else you'll see `command not found: buildock`

One-liner to activate in the current shell (not persistent!)

```sh
source /dev/stdin < <(curl -fsSL https://techoverflow.net/install-buildock.sh)
```

## How to use

Usage:

```
buildock [docker run argument(s)] <image name> <command(s)>
```

Example: To compile a C++ application using `make`:
```sh
buildock ulikoehler/ubuntu-gcc-make make
```
cmake
This command is mostly equivalent to just running `make` locally, however using the *docker*-based approach you don't have to deal with different compiler/make versions on different host systems producing.

By default, *buildock* does not enable interactive mode (`docker run --interactive/-i`) or allocate a pseudo-TTY (`docker run --tty/-t`) to facilitate easy automated builds in non-TTY environments like Gitlab runners.
In case you need to run in **interactive mode** (e.g. if you need to interact with the program being run), use this syntax:
```sh
buildock -it ulikoehler/ubuntu-gcc-make make
```

## Tips, tricks & limitation:

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

## How does it work`

`buildock` creates a new container using the given imamage an mounts the current working directory (`$(pwd)`) to `/app` on said container. It then runs the user-defined command on the container (e.g. `make`).
Additionally it ensures that the `docker` container runs under the current user using `--user $(id -u):$(id -g)`. This prevents the output files (if any) to be created as `root` user, instead they will be created with the user and group running `buildock`.

## How to make custom *buildock* images

Easy: Just use any docker container with the software you need installed. The only requirement is that `/app` is not used for anything relevant in the image, since `/app` is where `buildock` will mount the current directory to.

## More reading

* The post that started it all: [Towards a docker-based build of C/C++ applications](https://techoverflow.net/2019/06/27/towards-a-docker-based-build-of-c-c-applications/)
