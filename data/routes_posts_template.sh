# Start script
cd ../../$PROJECT/${PROJECT}-service/routes

# Generates App.js file
touch post.js
echo 'const express = require('"'express'"');
const Post = require('"'../models/Post'"');

const router = express.Router();

router.get('"'/'"', (req,res) => {
  res.send('"'Welcome to new posts'"');
}) 

router.post('"'/'"', (req,res) => {
  const post = new Post({
    name: req.body.name,
  });

  post.save()
    .then( data => {
      res.json(data);
    })
    .catch(err => {
      res.json({message: err});
    })
})

module.exports = router;' > posts.js


# End script
cd ../../../Config/data