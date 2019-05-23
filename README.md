[![Build Status](https://travis-ci.com/mmiladi/galaxy-nanopore.svg?branch=master)](https://travis-ci.com/mmiladi/galaxy-nanopore)

# Galaxy-Nanopore
NanoGalaxy: Galaxy toolkit and workflows for long-read Oxford Nanopore data

Usage
=====

At first you need to install docker. Please follow the instruction on https://docs.docker.com/installation/

After the successful installation, all what you need to do is:

``docker run -d -p 8080:80 mmiladi/galaxy-nanopore``

 For a more detailed description please consult the [docker manual](http://docs.docker.io/), it's really worth reading.

Let's start: ``docker run`` will run the Image/Container for you. In case you do not have the Container stored locally, docker will download it for you. ``-p 8080:80`` will make the port 80 (inside of the container) available on port 8080 on your host. Inside the container a Apache Webserver is running on port 80 and that port can be bound to a local port on your host computer. With this parameter you can access your Galaxy instance via ``http://localhost:8080`` immediately after executing the command above. ``mmiladi/galaxy-nanopore`` is the Image/Container name. ``-d`` will start the docker container in daemon mode. For an interactive session, you can execute:

``docker run -i -t -p 8080:80 mmiladi/galaxy-nanopore``
