#/bin/bash

if [[ -e ~/docker-atom/image.tar ]]  
  then 
    docker load --input ~/docker-atom/image.tar 
fi

docker build -t fike/atom ~/dockerfiles/atom

mkdir -p  ~/docker-atom 

docker save --output ~/docker-atom/image.tar fike/atom