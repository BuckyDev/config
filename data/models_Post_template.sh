# Start script
cd ../../$PROJECT/${PROJECT}-service/models

# Generates App.js file
touch Post.js
echo '
const mongoose = require('"'mongoose'"');

const postSchema = mongoose.Schema({
  name: {
    type: String,
    required: true,
  }
});

module.exports = mongoose.model('"'Posts'"', postSchema);
' > Post.js

# End script
cd ../../../Config/data