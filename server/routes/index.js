const mainRoutes = require('./main');
const showProdinCartRoutes = require('./showProdinCart');
const cartRoutes = require('./cart');
const formRoutes = require('./form');
const addAmountFromCartRoutes = require('./addAmountFromCartRoutes');
const showDBRoutes = require('./showDB');

module.exports = function(app){
    mainRoutes(app);
    showProdinCartRoutes(app);
    cartRoutes(app);
    formRoutes(app);
    addAmountFromCartRoutes(app);
    showDBRoutes(app);
}





