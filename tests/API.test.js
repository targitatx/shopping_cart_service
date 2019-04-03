const request = require('supertest')
const app = require('../server/server.js')

describe('Test /cart path', () => {
  test('It should respond with an array', (done) => {
      request(app).get('/cart').then((response) => {
          expect(Array.isArray(response.body.rows)).toBe(true);
          done();
      });
  });
});

describe('Test /cart path', () => {
  test('It should update quantity in cart', (done)=>{
    request(app).post('/cart', {sku: 3, quantity: 0}).then((response1) => {
      request(app).post('/cart', {sku: 3, quantity: 1}).then((response2) => {
        request(app).get('/cart').then((response3) => {
          expect(response3.body.rows[0].sku === 3 && response3.body.rows[0].sku === 1)
          done();
        })
      })
    })
  })
})