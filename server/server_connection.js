const app = require('./server.js')
const PORT = 3000;

app.listen(PORT, (err, data)=>{
  if (err){
    console.log('Error! Unable to connect to server: ', err)
  }
  else {
    console.log(`Listening on port ${PORT}`)
  }
})