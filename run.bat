@ECHO OFF

SET IMAGE_NAME=alexanderdna/container-tunnel
SET INSTANCE_NAME=alexanderdna-container-tunnel

docker start %INSTANCE_NAME% 2>NUL || docker run ^
    --detach ^
    --volume %INSTANCE_NAME%:/home/workspace ^
    --workdir /home/workspace ^
    --name %INSTANCE_NAME% ^
    %IMAGE_NAME%:latest code tunnel --accept-server-license-terms
