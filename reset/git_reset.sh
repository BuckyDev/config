# Start script 

# Secure deleting
printf 'Do you want to remove github repository [yes/no] :'; read ANSWER
if [ $ANSWER == 'yes' ]; then

# Asks user for git credentials
  echo 'Please set your Github credentials :';
  printf 'Username :'; read USERNAME;
  printf 'Mail address :'; read MAIL;
  printf 'Password :'; read PASSWORD;

# Removes github repository
  curl -u $MAIL:$PASSWORD -X DELETE https://api.github.com/user/repo/$PROJECT.git

# Verify repository is absent from repos
  curl -u $MAIL:$PASSWORD -X GET https://api.github.com/user/repo/${PROJECT}.git

# End script