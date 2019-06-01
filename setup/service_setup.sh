# Start script
cd ../../$PROJECT

# If has been called, look for project name, otherwise ask a name to user
if [ -z ${PROJECT} ]; then
  read PROJECT;
  mkdir "$PROJECT";
  cd "$PROJECT";
else 
  mkdir "$PROJECT"'-service';
  cd "$PROJECT"'-service';
fi

# Install dependencies
cd ../../Config/setup
sh dep_service_setup.sh

# End script
echo 'Created service folder'