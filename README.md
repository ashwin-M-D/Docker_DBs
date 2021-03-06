# Docker_DBs
Docker-compose for MySQL and MongoDB local testing servers. Great for learning the database systems.

## Prerequisites
Docker needs to be installed on your system. If you are using linux, make sure you also install docker-compose and not just docker. Windows docker engine comes with docker-compose. To install docker on windows, you need to make sore WSL2 is enabled and working. for more details look into docker documentation referenced below.

If you are using this on your own system, use localhost or 127.0.0.1 as the server ip.

To start the server, go into the folder, whose database server you want to create and then run:

```console
docker-compose up
```

To run a detached server run:

```console
docker-compose up -d
```

To stop the server, press ctrl + c if you are not running a detached server.
After doing so, for both detached and undetached servers, run:

```console
docker-compose down
```

For a more details on how to use docker and docker-compose, look at it's documentation referenced below.

## Default settings for Docker containers and how to use them
### MySQL
Port: 3306

Root User: root<br>
Root Password: password

User: user<br>
Password: password

The database can be accessed using MySQL Workbench or generating a terminal console for the container using the script MySQL_Shell.sh. If you are in Windows 10 using WSL2 backend, you can copy the command from the shell script and run it in powershell.

### MongoDB
Port: 27017

Root User: root<br>
Root Password: password

The database can be accessed using Robo3T Workbench or generating a terminal console for the container using the script MongoDB_Shell.sh. If you are in Windows 10 using WSL2 backend, you can copy the command from the shell script and run it in powershell.

### Neo4j Cypher
Port: 7474 / 7687

Root User: neo4j<br>
Root Password: password

The database can be accessed using Neo4j Desktop, the browser or generating a terminal console for the container using the script Neo4j_Cypher_Shell.sh. If you are in Windows 10 using WSL2 backend, you can copy the command from the shell script and run it in powershell.

The browser GUI can be accessed at localhost:7474

The database can be accessed through bolt i.e for Neo4j Desktop through port 7687

### PDBM_Playground
This is the playground provided by the book Principles of Database Management. Running this docker container starts a web service accessible through your web browser at localhost:80

It has many different databases that you can test on. However, the databases cannot be accessed through workbench or any other means and does not provide you root access. This prevents you from generating views and procedures in MySQL. It also prevents you from seeing multiple console output which you can when you use Robo3T for MongoDB.

## Clearing everything and starting over
The main advantage of using Docker is that it is very easy to scrap everything and start over. To do so, just run the docker-cleanup.sh script. Unfortunately, this script does not work on Windows.

## References
Docker: https://docs.docker.com/<br>
MySQL Workbench: https://www.mysql.com/products/workbench/<br>
Robo3T Desktop: https://robomongo.org/download/<br>
Neo4j Desktop: https://neo4j.com/download-v2/<br>
Principles of Database Management Book: https://www.pdbmbook.com/<br>
PDBM Playground Code Source: https://github.com/Macuyiko/pdbmbook-docker/
