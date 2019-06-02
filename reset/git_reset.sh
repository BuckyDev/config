# Start script 

# Secure deleting
printf 'Do you want to remove github repository [y/n] :'; read ANSWER
if [ $ANSWER == 'y' ]; then

# Asks user for git credentials
  echo 'Please set your Github credentials :';
  printf 'Username :'; read USERNAME;
  printf 'Mail address :'; read MAIL;
  printf 'Password :'; read PASSWORD;

# Removes github repository
  curl -i -u $MAIL:$PASSWORD -X DELETE https://api.github.com/repos/$USERNAME/$PROJECT;

fi
# End script