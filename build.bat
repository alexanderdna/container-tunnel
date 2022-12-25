@ECHO OFF

SET IMAGE_NAME=alexanderdna/container-tunnel

docker build -t %IMAGE_NAME% .

PAUSE
