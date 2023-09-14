const bodyParser = require('body-parser');

module.exports = function(app){
    const mysql = require("mysql2");

    const connection = mysql.createConnection({
        host: "localhost",
        user: "root",
        database: "organik",
        password: ""
    });
    connection.connect(function(err){
        if (err) {
           return console.error("Ошибка: " + err.message);
        }
        else{
            console.log("Подключение к серверу MySQL успешно установлено");
        }
    });
    // 
    const jsonParser = bodyParser.json()
    // add amount from cart
    app.post('/addAmountFromCart',jsonParser, (req, res) => {  // запрос в req\ ответ в res
        result = req.body;
        connection.query(`UPDATE orderprod SET amount='${result.amount}' WHERE id='${result.id}' `);
            (err) => {
            if(err) console.log(err);
        }
    }) 
}