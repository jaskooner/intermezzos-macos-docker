docker run \
-it \
--name devtest \
--mount type=bind,source="$(pwd)",target=/app \
rustos:03


