const mysql = require('mysql');

//creates connection with mysql server
const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '#ClassPass',
    database: 'employeeManagement_db',
});



//confirm that connection has been established
connection.connect((err) => {
    if (err) throw err;
    console.log(`connected as id ${connection.threadId}`);
    return;
});

module.exports = connection;