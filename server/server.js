const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const cors = require('cors');
const path = require('path');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use(cors());
app.use(express.static(path.join(__dirname, '../dist')));

const { getAllItems } = require('./database/helper_functions.js');
const { updateItemQuantity } = require('./database/helper_functions.js');

app.get('/cart', (req, res)=>{
  getAllItems((err, data)=>{
    if (err) {
      console.log('Server unable to get data!', err);
      res.end();
    } else {
      console.log('Here is your data!', data);
      res.send(data);
    }
  });
});

app.post('/cart', (req, res)=>{
  console.log('req.body>>>', req.body);
  updateItemQuantity(req.body.sku, req.body.quantity, (err, data)=>{
    if (err) {
      console.log('Server unable to update quantity!', err);
      res.end();
    } else {
      console.log('Quantity updated/added to cart');
      res.send('success');
    }
  });
});

module.exports = app;