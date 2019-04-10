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
    `UPDATE inventory_items SET datecreated = NOW() WHERE sku = ${sku} and quantity = 0;
     UPDATE inventory_items SET quantity = ${quantity === undefined ? 'quantity+1' : quantity} WHERE sku = ${sku};`
    , (err, data)=>{
    if (err){
      callback(err)
    }
    else {
      callback(null, data)
    }
  })
}

// updateItemQuantity(6,3, (err, data)=>{
//   if (err){
//     console.log('error!: ', err)
//   }
//   console.log('success')
// })

// getAllItems();
// updateItemQuantity(3, 100)

module.exports = { getAllItems, updateItemQuantity };