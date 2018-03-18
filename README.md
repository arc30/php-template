
# CI/CD pipeline for PHP project

A basic pipeline that integrates Docker, CircleCI and Heroku in a PHP project for Continuous Integration and Continuous Deployment.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Create an account on CircleCI using your GitHub profile.<br>
Create an account on Heroku.<br>
Install Docker and Docker Compose.
``` sudo apt-get install docker.io``` <br>
```sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose```

### Installing

Fork and clone this repository. <br>

php-template directory contains:<br>
1) ```src``` is the folder where you will write your PHP source code files. <br>
2) ```.circleci``` is the folder which has the default configuration file for integrating your project with CircleCI. This file is enough to get your project up and running. You have to edit this file according to your project specific needs. <br>
3) ```Dockerfile``` is the file used by Docker to dockerize your project. <br>

### Heroku

1) Create a new project ```my-app```<br>
2) Go to account settings and copy your API Key <br>

### CircleCi

1) Add and set up this forked project and click on ```start building``` .<br>
2) Go to this project's settings and navigate to environment variables section to add the following three environment variables. <br>

  ```
  NAME:   HEROKU_API_KEY  
  VALUE:  the key that you copied from heroku
                   
  NAME:  HEROKU_APP_NAME                
  VALUE: your project name on heroku
  
  NAME:  HEROKU_USERNAME               
  VALUE: email id used to login for heroku
```
4) Rebuild the project


## Running the tests

This shall be explained in a later stage.



## Deployment

Open your app on Heroku to find your PHP project deployed.
