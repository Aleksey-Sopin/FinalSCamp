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

    const sql = `SELECT * FROM orderprod`;
    const jsonParser = bodyParser.json()
    app.get('/showProdinCart',jsonParser, (req, res) => {  // запрос в req\ ответ в res
        connection.query(sql, function(err, results) {
            if(err) console.log(err);
            res.send(results)
        });
    })
}