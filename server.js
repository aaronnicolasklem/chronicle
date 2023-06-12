const express = require('express');
const app = express();
const mysql= require('mysql');
var path = require('path');
const port = 3000;
app.use('/public', express.static('public'));
app.set('view engine', 'ejs')


app.get('/', (req, res) => {
  res.render('form.ejs');
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});

