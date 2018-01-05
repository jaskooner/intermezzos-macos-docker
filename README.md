# intermezzos-macos-docker
Intermezzos from the book at https://intermezzos.github.io running on macOS under a docker
container. The standard instructions to build on macos did not work for me so I had to set
up a docker image and container instead.

To run.

In the main directory build the docker image:

docker build -t rustos:03 .

Then create and run a conatiner that binds to your current working directory.

  docker run \
  -it \
  --name devtest
  --mount type=bind,source="$(pwd)",target=/app \
  rustos:03
  
Once connected to the container:

make cargo

make

You can edit your code on your host mac but run the code in the container.

NB: rust version used was rustc 1.24.0-nightly. 


