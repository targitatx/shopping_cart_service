const { client } = require('../server/database/db_config.js')

describe ('Test database', ()=>{
  test('It should contain 100 items', (done) => {
    client.query('SELECT * FROM inventory_items', (err, data)=>{
      expect(data.rows.length === 100)
      done();
    })
  })
})

describe('Test database', ()=>{
  test('Every item should have a unique ID', (done) => {
    client.query('SELECT sku FROM inventory_items', (err, data)=>{
      const uniqueSkus = data.rows.filter((sku, index)=>{
        (!data.rows.slice(index,1,0).includes(sku))
      })
      expect(uniqueSkus.length === 100);
      done();
    })
  })
})