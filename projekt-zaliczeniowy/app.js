const express = require('express');
const morgan = require('morgan');
const mysql = require('mysql');

const app = express();

app.use(morgan('short'));

app.get('/', (req, res) => {
  console.log('Responding to root route');
  res.send('Hello from ROOT');
});

app.get('/tweets', (req, res) => {
  const connection = mysql.createConnection({
    host: 'localhost',
    port: '3306',
    user: 'newuser',
    password: 'pass',
    database: 'nodejs_tweets',
  });

  const queryString = 'SELECT * FROM tweets;';
  connection.query(queryString, (err, rows, fields) => {
    if (err) {
      console.log(`Failed to query for tweet: ${err}`);
      res.sendStatus(500);
      res.end();
      return;
    }

    res.json(rows);
  });
});

app.get('/tweets/:id', (req, res) => {
  console.log(`Fetching tweet with id: ${req.params.id}`);

  const connection = mysql.createConnection({
    host: 'localhost',
    port: '3306',
    user: 'newuser',
    password: 'pass',
    database: 'nodejs_tweets',
  });

  const tweetId = req.params.id;
  const queryString = 'SELECT * FROM tweets WHERE tweet_id = ?;';
  connection.query(queryString, [tweetId], (err, rows, fields) => {
    if (err) {
      console.log(`Failed to query for tweet: ${err}`);
      res.sendStatus(500);
      res.end();
      return;
    }

    res.json(rows);
  });

  //   res.end();
});

app.listen(3003, () => {
  console.log('Server is up and listening on 3003...');
});
