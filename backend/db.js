const mongoose = require("mongoose");

const dbUrl = `mongodb+srv://${process.env.DB_USER}:${process.env.DB_PASSWORD}@vidly-database.jcthn.mongodb.net/${process.env.DB_NAME}?retryWrites=true&w=majority`
//DB_URL || "mongodb://localhost/vidly";

const connect = async () => {
  await mongoose.connect(dbUrl, {
    useUnifiedTopology: true,
    useNewUrlParser: true,
  });
  console.log("Connected to MongoDB: " + dbUrl);
};

const close = () => mongoose.connection.close();

module.exports = { connect, close, url: dbUrl };
