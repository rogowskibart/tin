const express = require('express');
const db = require('./config/db');
const cors = require('cors');
const morgan = require('morgan');

const app = express();
const PORT = 3002;

app.use(cors());
// app.use(express.json());
app.use(morgan('short'));

// get all tweets
app.get('/api/tweets', (req, res) => {
  db.query('SELECT * FROM tweets', (err, rows, fields) => {
    if (err) {
      console.log(`Failed to get all tweets: ${err}`);
      res.sendStatus(500);
      return;
    }

    res.send(rows);
  });
});

app.get('/', (req, res) => {
  console.log('Responding to root route');
  res.send('Hello from ROOOOOT');
});

app.listen(PORT, () => {
  console.log(`Server is up and listening on ${PORT}`);
});
