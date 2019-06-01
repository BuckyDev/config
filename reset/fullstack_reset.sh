echo $PROJECT
# Ask for user confirmation before deleting
printf 'Do want to reset your project now? [y/n] :'
read answer

if [ $answer == 'y' ]; then 
  cd ../..;
  rm -rf $PROJECT; 
  cd Config; 
  sh reset/git_reset.sh
fi