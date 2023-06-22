const express = require('express');
const app = express();
const mysql = require('mysql');
var path = require('path');
const port = 3000;
app.use('/public', express.static('public'));
app.set('view engine', 'ejs')

var con = mysql.createConnection({
 
});
var data = [];
var temp = {};

var sql = "SELECT * from nouns";
con.connect(function (err) {
  if (err) throw err;
  console.log("Connected!");

  con.query(sql, function (err, result) {
    if (err) throw err;
    temp = result;
    data.push(temp);
  });
  

  sql = "SELECT * from adjectives";
  con.query(sql, function (err, result) {
    if (err) throw err;
    temp = result;
    data.push(temp);
  });

  sql = "SELECT * from places";
  con.query(sql, function (err, result) {
    if (err) throw err;
    temp = result;
    data.push(temp);
  });

});


app.get('/', (req, res) => {
  res.render('base.ejs', { data });
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});

