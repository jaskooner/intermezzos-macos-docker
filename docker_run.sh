docker run -d \
-it \
--name devtest \
--mount type=bind,source="$(pwd)",target=/app \
rustos:1.22.1


