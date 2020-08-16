


Welcome to the Jersey Locker App. This application is a log of your favorite soccer jerseys. In this application, there are three tables that are created within the database to host information. The database contains the User, Jersey and the League tables. The tables are connecting via associations such as Has Many and Has Many Through. User has many jerseys and leagues, Jersey belongs to leagues and Users, league has many jerseys through users and user has many leagues through jerseys.  

Session secret is saved in .env file. I created .gitignore file so that the key is not pushed to GitHub.  Once you clone the project repository, go ahead and create your own secret. Create .env file in the root of your project and pass in the key as a constant variable. 

Once you have done that, to make sure that you have all the gems and dependencies, run bundle. 

In your terminal run shotgun. Follow the link provided in your terminal or run “localhost:9393" in your browser to get started. 

Once you are in the home page, sign in and enjoy your soccer jersey locker. You will be able to create jerseys and view more information about them. You will be able to edit and delete them if you wish. Also, you will be able to see your soccer jersey collection all in one place. 
