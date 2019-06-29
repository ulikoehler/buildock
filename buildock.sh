
# buildock: https://github.com/ulikoehler/buildock
# usage: buildock <image name> <command(s)>
function buildock { IMAGE=$1 ; shift ; docker run --user $(id -u):$(id -g) -v "$(pwd):/app" --workdir "/app" -it ${IMAGE} $@ }
