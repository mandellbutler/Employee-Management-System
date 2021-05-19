const mysql = require('mysql');

//creates connection with mysql server
const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '#ClassPass',
    database: 'employeeManagement_db',
});




module.exports = connection;