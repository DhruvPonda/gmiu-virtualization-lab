
#!/bin/bash
docker run -dit --name lab1 --cpus=1 --memory=512m ubuntu:24.04
docker run -dit --name lab2 --cpus=1 --memory=512m ubuntu:24.04
docker volume create lab1-data
docker run -dit --name lab3 -v lab1-data:/data --memory=256m ubuntu:24.04
docker run -dit --name lab4 --tmpfs /scratch:rw,size=50m ubuntu:24.04
