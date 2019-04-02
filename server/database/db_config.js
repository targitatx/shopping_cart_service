const { Client } = require('pg')
const client = new Client({
  database: 'inventory'
})

client.connect();

module.exports = { client };