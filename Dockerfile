FROM ubuntu:latest

#Set the working directory in the image
WORKDIR /app

#Copy the filr from host file system to image file system
COPY . /app

#Install the necessary packages
RUN apt-get update && apt-get install -y python3 python3-pip

#Set enviroment variable
ENV NAME World

#Run a command to start the application
CMD [ "python3", "app.py" ]


