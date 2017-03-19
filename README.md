# PEcAn: Dockering R and Postgres
Here, I am using the offical image of Postgresql.

I have created a customized image of R-studio. Check Dockerfile.
This image is also hosted on docker-hub.

#Usage  

Using only the r-studio contianer
```Bash
docker pull abkapoor/r-studio-postgres
docker run -v <PWD>:/home abkapoor/r-studio-postgres
```

A docker-compose.yml can be used to setup r-studio and postgres
```Bash
rstudio:
  image: r-studio-postgres
  volumes: 
  - <PWD>:/home
  links:
  - postgres:db
  environment:
  - any environment variables
  restart: always

postgres:
 image: postgres
 volumes:
 - <PWD>:/home/postgres
 environment:
 - Any variables
 restart: always
```

with this, you can start up both the services with postgres linked to the r-studio container.
