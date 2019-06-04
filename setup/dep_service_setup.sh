# Start script
cd ../../$PROJECT/${PROJECT}-service

# Init project dependencies
npm init

# Install dependencies
npm install express
npm install nodemon
npm install mongoose
npm install dotenv
npm install body-parser

# Creates folder structure
mkdir models;
mkdir routes;

cd ../../Config/data
sh App_template.sh
sh env_template.sh
sh models_Post_template.sh
sh routes_posts_template.sh
cd ../../$PROJECT/${PROJECT}-service

# End script
cd ../../Config/setup