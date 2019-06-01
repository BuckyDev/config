# Start script
cd ../../$PROJECT

# If has been called, look for project name, otherwise ask a name to user
if [ -z ${PROJECT} ]; then
  read PROJECT;
  mkdir "$PROJECT";
  cd "$PROJECT";
else 
  mkdir "$PROJECT"'-ui';
  cd "$PROJECT"'-ui';
fi

# Creates folder tree
mkdir api
mkdir components
mkdir pages
mkdir tests
mkdir utils
touch "App.js"

# Install dependencies
cd ../../Config/setup
sh dep_ui_setup.sh

# End script
echo 'Created ui folder'