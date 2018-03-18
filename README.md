
# CI/CD pipeline for php project

A basic pipeline that integrates docker, circleci and heroku in a php project for continuous integration and continuous deployment.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

An account on circleci linked to your GitHub.<br>
An account on heroku.<br>
Docker.


### Installing

Fork and clone this repository. <br>

php-template directory contains:<br>
1) ```src``` folder which will have all php source codes. <br>
2) ```.circleci``` folder which has the config file. <br>
3) ```Dockerfile``` that dockerizes your project. <br>

### Heroku

1) Create a new project ```my-app```<br>
2) Go to account settings and copy the API Key <br>

### CircleCi

1) Add and set up this forked project and click on ```start building``` .<br>
2) Go to this project's settings. <br>
3) Go to environment variables to add new env variables. <br>

  ```
  NAME:   HEROKU_API_KEY  
  VALUE:   the key that you copied from heroku
                   
  NAME: HEROKU_APP_NAME                
  VALUE: your project name on heroku
  
  NAME: HEROKU_USERNAME               
  VALUE:  email id used to login for heroku
```
4) Rebuild the project


## Running the tests

Explain how to run the automated tests for this system



## Deployment

Open your app on Heroku to find your php project deployed.
