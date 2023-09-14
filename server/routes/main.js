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
    const sql = `SELECT * FROM products`;
    //! Вывод из БД (products) всех товаров 
    app.get('/', (req, res) => {  // запрос в req\ ответ в res
        connection.query(sql, function(err, results) {
            if(err) console.log(err);
            res.send(results)
        });
    })
    // 
    const jsonParser = bodyParser.json();
    //! добавление данных в таблицу OrderProduct 
    //! при клике на кнопку "ДОБАВИТЬ В КОРЗИНУ"
    let result; 
    app.post('/',jsonParser, (req, res) => {  // запрос в req\ ответ в res
        result = req.body;
        connection.query( `INSERT INTO orderprod ( date, totalPrice, productID, amount, discount, src, name )  
                            VALUES ( now(), '${result.price}', '${result.id}', '${result.balance}', '${result.discount}', '${result.src}', '${result.name}' ) `);
            (err) => {
            if(err) console.log(err);
        }
    }) 
}


