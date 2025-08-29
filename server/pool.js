//method for connecting the database
const mysql = require('mysql');

let pool = mysql.createPool({

    host: '127.0.0.1',

    port: 3306,

    user: 'root',

    password: '',

    database: 'project',

    connectionLimit: 15
});

module.exports = pool;