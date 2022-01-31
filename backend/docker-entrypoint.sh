#!/bin/sh

echo "Waiting for MongoDB to start..."
./wait-for mongodb+srv://$DB_USER:$DB_PASSWORD@vidly-database.jcthn.mongodb.net/$DB_NAME?retryWrites=true&w=majority

echo "Migrating the databse..."
npm run db:up 

echo "starting test!"
npm test