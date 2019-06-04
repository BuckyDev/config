# Start script
cd ../../$PROJECT/${PROJECT}-service

# Generates App.js file
touch App.js
echo 'const express = require('"'express'"');
const mongoose = require('"'mongoose'"');
const bodyParser = require('"'body-parser'"');
require('"'dotenv/config'"');

// Start
const App = express();
App.use(bodyParser.json());

// Midlewares
App.use('"'/posts'"', postsRoute)

// Routes
App.get('"'/'"', (req,res) => {
  res.send('"'Welcome home'"');

// Connect

// Start listening
App.listen(1000);
})' > App.js


# End script
cd ../../Config/data