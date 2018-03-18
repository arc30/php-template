# php-template

Fork this repository.

Open your terminal and clone your forked repo.
# git clone <cloning link>

Navigate to the php-template folder in your local system.
There are 2 folders: src and .circleci
There is a Dockerfile.

Src folder is where you'll write all your source php files.
.circleci contains the config file

------------------------------------------------------------------------

Scrum master has an account on circleci and Heroku.
Go to heroku and add a new project with your desired project name, say my-app.

Go to heroku account settings. Scroll down to find API key. Click reveal key. Copy and save this somewhere for later use.

Go to circleci.
Go to Add new project
Click on your forked repo name and set up the project. Click on "start building option".

Now you might see that the build has failed.

So go to builds.
Click on the settings button next to your project name.
In the build settings, go to environment variables.
Click on Add variable.
Set these up.

  NAME:   HEROKU_API_KEY  
  VALUE:   the key that you copied from heroku
                   
  NAME: HEROKU_APP_NAME                
  VALUE: your project name on heroku
  
  NAME: HEROKU_USERNAME               
  VALUE:  email id used to login for heroku
  
After you save this, try building your project again from circleci. Be relieved if it's fixed.

Go to heroku.
Click on your project name and click "open app". You should be able to see your sample php page.

Now start building your project with this basic pipeline outline
 




