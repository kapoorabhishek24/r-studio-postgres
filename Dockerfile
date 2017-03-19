FROM ubuntu:latest
MAINTAINER ABHISHEK KAPOOR <kapoorabhishek24@gmail.com>

# This image is used to deploy R-studio and Postgres.

# Update package list and install wget
RUN apt-get update -y
RUN apt-get install -y wget

#Install R 
RUN apt-get install r-base

#Install R-studio - https://www.rstudio.com/products/rstudio/download-server/
RUN apt-get install gdebi-core
RUN wget https://download2.rstudio.org/rstudio-server-1.0.136-amd64.deb
RUN gdebi rstudio-server-1.0.136-amd64.deb

