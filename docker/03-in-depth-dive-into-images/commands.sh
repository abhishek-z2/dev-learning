docker search image-name
docker pull image-name <tag - version>
docker tag ubuntu:25.10 ubuntu:noble_numbat
docker build -t hello-docker .
docker diff zen-rosalind
docker commit zen rosalind hello-docker-additional

# Dockerfile

# Start from the alpine image
FROM alpine:3.21

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy the hello.sh file from this location to /usr/src/app/ creating /usr/src/app/hello.sh.
COPY hello.sh .

# Execute a command with `/bin/sh -c` prefix.
RUN touch additional.txt   # <<

# When running Docker run the command will be ./hello.sh
CMD ["./hello.sh"]


ENTRYPOINT[  ] is the run time command that will be executed when the container starts. It is used to specify the main command that should be run when the container is started. The CMD instruction provides default arguments for the ENTRYPOINT command. If you specify an ENTRYPOINT, the CMD will be passed as arguments to the ENTRYPOINT command. If you do not specify an ENTRYPOINT, the CMD will be executed as a command when the container starts.