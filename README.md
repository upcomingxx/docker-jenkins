# docker-jenkins
Jenkins with docker inspired by dockerbook by jamtur01 (https://github.com/jamtur01/dockerbook-code)

Run command: 

```bash
docker run -d --privileged -p 8081:8080 -v "/var/neo9/jenkins/data:/opt/jenkins/data" -v "/var/neo9/jenkins/buildenv:/tmp/jenkins-buildenv" -v "/home/mklimuk/.ssh:/root/.ssh" -e "VIRTUAL_HOST=jenkins.tools.neo9.pl" neo9polska/jenkins-docker
```
