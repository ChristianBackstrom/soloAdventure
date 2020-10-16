var express = require('express');
var router = express.Router();
const {pool, query} = require('../models/db')

router.get('/', function (req, res, next) {
  const sql = 'SELECT * FROM links';

  query(sql, function (err, result, fields) {
    res.json({
      status: 200,
      result
    });
  });
});

router.get('/:id', function (req, res, next) {
  const sql = 'SELECT * FROM links WHERE id = ?';

  query(sql, [req.params.id], function (err, result, fields) {
    res.json({
      status: 200,
      id: req.params.id,
      result: result
    });
  });
});


module.exports = router;
