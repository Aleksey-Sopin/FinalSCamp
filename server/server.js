const express = require('express');
const app     = express();
const port    = 5000;

// разрешаем обращаться к серверу всем с методом ГЕТ
app.use(function(req, res, next){
    res.setHeader('Access-Control-Allow-Origin', '*')
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST')
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type')
    res.setHeader('Access-Control-Allow-Credentials', true)
    next()
})

require('./routes/')(app);

app.listen(port, () => {
    console.log('server listen')
})


// app.get('/', (req, res) => {
//     console.log('HI')
// })  

