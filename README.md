Installed Jenkins Plugins are listed/can be configured in plugins.txt

$ docker build -t myjenk .

$ docker run -d -v /var/run/docker.sock:/var/run/docker.sock \
                -v $(which docker):/usr/bin/docker -p 8484:8080 myjenk



