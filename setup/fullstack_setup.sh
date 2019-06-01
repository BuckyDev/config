# Here is a config file to generate fullstack projects including both backend and frontend

# Start script
cd ../..

# Creates a new project folder containing a readme file
mkdir $PROJECT
cd $PROJECT
touch readme.txt
cd ../Config/setup
sh ui_setup.sh
sh service_setup.sh
echo 'Created local folder'

# Launches subscripts
sh git_setup.sh

# End script
cd ..
echo Your environment has been setup, you can quick start your project by running "launch projectName" 'in' your project repo
echo For extra informations about the setup and help, please check the Readme file on your repo root
