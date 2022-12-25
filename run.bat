@ECHO OFF

docker start alexanderdna-container-tunnel 2>NUL || docker run ^
    --detach ^
    --volume alexanderdna-container-tunnel:/home/workspace ^
    --workdir /home/workspace ^
    --name alexanderdna-container-tunnel ^
    alexanderdna/container-tunnel:latest code tunnel --accept-server-license-terms
