# Start script
cd ../../$PROJECT

# Creates github repository // modify $REPO to new_repo.json
touch repo_infos.json
echo '{
    "name": "'$PROJECT'",
    "description": "New fullstack generated projet", 
    "homepage": "https://github.com", 
    "private": true
    }' > repo_infos.json
curl -i -u $MAIL:$PASSWORD -vX POST https://api.github.com/user/repos -d @repo_infos.json \
--header "Content-Type: application/json"

# Init local repo to be a git repo
git init
git config user.email $MAIL
git config user.name $USERNAME
git add . && git commit -m "Init repo"

# Bind and push to remote repo
git remote add origin https://github.com/BuckyDev/$PROJECT
git push -u origin master
echo 'Created and fetched project with Github repository'

# End script
cd ../config/setup