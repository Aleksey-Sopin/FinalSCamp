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

    let result; 
    app.post('/form',jsonParser, (req, res) => {  // запрос в req\ ответ в res
        result = req.body;
        connection.query(`INSERT INTO person (fullName, email, address, phoneNumber, message)
                    VALUES ('${result.fullName}', '${result.email}', '${result.address}','${result.phone}', '${result.message}')
                 `);
        connection.query(`INSERT INTO tablefinishedorder (order_id) VALUES ('${result.email}')`)
    })
}