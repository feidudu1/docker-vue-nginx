var express = require('express');
var router = express.Router();
var ctMysqlData = require('../controller/getMysqldata');

/* GET home page. */
router.get('/', function(req, res) {
  res.send('hello world')
  // res.render('index', { title: 'Express' });
});
router.get('/json', function(req, res) {
  res.json({
    code: 0,
    data: 'this is message from node container'
  })
});
router.get('/getMysqlData', ctMysqlData.getMysql1);

module.exports = router;