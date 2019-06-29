
# buildock: https://github.com/ulikoehler/buildock
# usage: buildock <image name> <command(s)>
function buildock {
    # No arguments warning
    if [[ $# -eq 0 ]] ; then echo "Usage: buildock <image name> <command(s)>" ; exit 1 ; fi
    # Actual buildock code
    IMAGE=$1
    shift
    docker run --user $(id -u):$(id -g) -v "$(pwd):/app" -w "/app" --rm ${IMAGE} $@
}
