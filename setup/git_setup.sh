# Start script

# Asks user for github credentials
echo Please set your Github credentials :
printf 'Username :'; read USERNAME;
printf 'Mail address :'; read MAIL;
printf 'Password :'; read PASSWORD;

# Creates github repository
curl -u $MAIL:$PASSWORD -d '{"name":' '"'"${PROJECT}"'", "description": "Test of github api", "homepage": "https://github.com", "private": true}' -X POST https://api.github.com/user/repos
git init
git config user.email $MAIL
git config user.name $USERNAME
git add . && git commit -m "Init repo"
git remote add origin https://github.com/BuckyDev/$PROJECT.git
git push -u origin master
echo 'Created and fetched project with Github repository'

# End script