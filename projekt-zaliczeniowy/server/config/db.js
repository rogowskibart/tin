const mysql = require('mysql');

const db = mysql.createConnection({
  host: 'localhost',
  user: 'newuser',
  password: 'pass',
  database: 'nodejs_tweets',
});

module.exports = db;
