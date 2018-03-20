
# CI/CD pipeline for PHP project

A basic pipeline that integrates Docker, CircleCI and Heroku in a PHP project for Continuous Integration and Continuous Deployment.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

1) An account on <a href="https://circleci.com/signup/">CircleCI</a> created using your GitHub profile.<br>

2) An account on <a href="https://signup.heroku.com/login">Heroku</a>.<br>

3) Docker and Docker Compose installed on your system.<br>
``` sudo apt-get install docker.io docker-compose ``` 

### Installing

Fork and clone this repository. <br>

```php-template``` directory contains:<br>
1) ```src``` is the folder where you will write your PHP source code files. <br>
2) ```database``` is the folder where you save your mysql database dump. Create a database dump of your project using <a href="https://dev.mysql.com/doc/refman/5.7/en/mysqldump.html">mysqldump</a> and save it here as ```db.sql```.<br>
<!--
3) ```.circleci``` is the folder which has the default configuration file for integrating your project with CircleCI. This file is enough to get your project up and running. You may have to later edit this file according to your project specific needs. <br>
4) ```Dockerfile``` is the file used by Docker to dockerize your project. This file is enough to get your project up and running. You may have to later edit this file according to your project specific needs.<br>
5) ```final-php.sh``` This file is enough to get your project up and running. You may have to later edit this file according to your project specific needs.
-->
### Heroku

1) Create a new project <br>
2) Go to account settings and copy your API Key <br>

### CircleCI

1) Add and set up this forked project and click on ```Start Building```. Here the build will fail, but continue to step 2. <br>
2) Go to this project's settings and navigate to environment variables section to add the following three environment variables. <br>

  ```
  NAME:   HEROKU_API_KEY  
  VALUE:  the key that you copied from heroku
                   
  NAME:  HEROKU_APP_NAME                
  VALUE: your project name on heroku
  
  NAME:  HEROKU_USERNAME               
  VALUE: email id used to login for heroku
```
4) Rebuild the project. The build should now be fixed.


## Running the tests

This shall be explained in a later stage.


## Deployment

Open your app's Heroku Dashboard to find your PHP project deployed. Visit ```https://<your-app-name>.herokuapp.com/``` to see your website. 
