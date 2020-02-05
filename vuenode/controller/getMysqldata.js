let express = require('express');
var connection = require('../db/mysql');

exports.getMysql1 = (req, res) => {
  const sql = `select * from users`;
  connection.query(sql, (err, rows, fields) => {
    if (err) {
      throw err;
    } else {
      res.json({
        code: 0,
        message: 'get mysql data',
        data: rows[0]
      })
    }
  })
}