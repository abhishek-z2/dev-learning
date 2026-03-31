- run is used to start a container and start is used to start a stopped container //inaccurate
- that's it. 

docker run   → create + start container
docker start → start an existing stopped container
docker stop  → stop a running container
docker rm    → delete a container

-i is interactive(keeps input open(waits for the input))
-t is for tty(attachs terminal)
-d is for detached mode

changes inside container is lost if it is removed