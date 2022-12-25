# What this is

A Docker container that runs Visual Studio Code Remote Tunnel
which can be connected from a remote client having
Visual Studio Code locally installed or from the
[vscode.dev](https://vscode.dev) web app.
The remote client can be a computer, an iPad or even
a smartphone if your eyesight is good enough.

The container mounts a named volume that is supposed
to contain workspace data.

# How to use it

## Run the scripts

### Windows

1. Execute `build.bat` to build the Dockerfile.
2. Execute `run.bat` to run the container if it doesn't
exist yet or to start it if it has been created before.

The image's name should be `alexanderdna/container-tunnel`.

The container and volume's name should both be
`alexanderdna-container-tunnel`.

You can change the names to whatever you like.

### Linux/MacOS

I don't have the shell scripts for these platforms yet.
Please feel free to contribute by making pull requests.
Thank you in advance.

## Allow connections

When the container is up, open its log in Docker Desktop or
in the terminal using the following command:

```
docker logs -n 50 alexanderdna-container-tunnel
```

You will see a message from Visual Studio Code Server with
the instruction to log into GitHub. Follow the instruction
and you will be provided a tunnel name to connect.

For more details about Remote Tunnel, [visit this page](https://code.visualstudio.com/docs/remote/tunnels).