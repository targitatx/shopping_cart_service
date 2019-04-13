const { client } = require('./db_config.js');

const getAllItems = (callback) => {
  client.query('SELECT * FROM inventory_items WHERE quantity > 0 ORDER BY datecreated desc', (err, data)=>{
    if (err){
      callback('Error! Unable to get data: ', err)
    }
    else {
      callback(null, data)
    }
  })
}

const updateItemQuantity = (sku, quantity, callback) => {
  console.log('QUANTITY: ', quantity)
  client.query(
    `UPDATE inventory_items SET datecreated = NOW() WHERE sku = ${sku} and quantity = 0`,
    (quantity === undefined ? `UPDATE inventory_items SET quantity = quantity+1 WHERE sku = ${sku} and quantity < 10`: 
    `UPDATE inventory_items SET quantity = ${quantity} WHERE sku = ${sku}`)
    , (err, data)=>{
      if (err){
        callback(err)
      }
      else {
        callback(null, data)
      }
    })
  }
  
  updateItemQuantity(1,1, ()=>{console.log('hahaha')})

module.exports = { getAllItems, updateItemQuantity };