
# buildock: https://github.com/ulikoehler/buildock
# usage: buildock [docker run argument(s)] <image name> <command(s)>
function buildock {
    # No arguments warning
    if [[ $# -eq 0 ]] ; then
        echo "Usage: buildock [docker run argument(s)] <image name> <command(s)>"
    else
        # Actual buildock code
        docker run -e HOME=/tmp --user $(id -u):$(id -g) -v "$(pwd):/app" -w "/app" --rm $@ 
    fi
}

# Export function to sub-shells
export -f buildock
