const mysql = require('mysql')

module.exports = mysql.createConnection({
  host: '172.19.0.2', // 为容器启动后的ipAdress
  // host: '127.0.0.1',
  port: '3306',
  user: 'root',
  password: '123456',
  database: 'vueclidemo',
  charset: 'UTF8MB4_GENERAL_CI'
})