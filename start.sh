# Request project name from user
printf 'Please set a project name : '
read PROJECT
export PROJECT

# Launch setup and reset
cd setup; sh fullstack_setup.sh; cd ..;
cd reset; sh fullstack_reset.sh; cd ..;