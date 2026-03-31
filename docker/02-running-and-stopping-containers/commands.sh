docker run -d -it ubuntu 
docker run -d -it --name looper ubuntu /commands to the container >> / sh -c "while true; do echo hello world; sleep 1; done"]
docker pause looper
docker unpause looper
docker attach looper --no-stdin /only stops the output, but the container is still running, when pressed CTRL+C/
docker exec looper ls -la
docker kill looper && docker rm looper
docker run -d --rm -it --name looper-it ubuntu sh -c 'while true; do date; sleep 1; done'   /The --rm ensures that there are no garbage containers left behind /


