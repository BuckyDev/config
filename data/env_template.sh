# Start script
cd ../../$PROJECT/${PROJECT}-service

# Generates App.js file
touch .env.js
echo '
DB_CONNECTION= <put your connect url>
' > .env.js


# End script
cd ../../Config/data