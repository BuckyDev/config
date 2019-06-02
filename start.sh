# Request project name from user
printf 'Please set a project name : '
read PROJECT
export PROJECT

# Asks user for github credentials
echo Please set your Github credentials :
printf 'Username :'; read USERNAME; export USERNAME;
printf 'Mail address :'; read MAIL; export MAIL;
printf 'Password :'; read PASSWORD; export PASSWORD;

# Launch setup 
cd setup; sh fullstack_setup.sh; cd ..;