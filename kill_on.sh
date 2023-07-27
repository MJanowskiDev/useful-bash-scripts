# Terminates the processes listening on a specified port (given as an argument)
function kill_on() {
    if [ -z "$1" ]; then
        echo "Please provide a port number as an argument"
        return
    fi

    port=$1
    pids=$(sudo lsof -t -i :"${port}")

    if [ -z "$pids" ]; then
        echo "No process found listening on port ${port}"
    else
        for pid in $pids
        do
            echo "Killing process ${pid} listening on port ${port}"
            sudo kill -9 "$pid"
        done
    fi
}
