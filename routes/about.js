var express = require('express');
var router = express.Router();
const {pool, query} = require('../models/db');

router.get('/', async function (req, res, next) {
  try {
    res.render('about', {
    });
  } catch (e) {
    console.error(e);
    next(e);
  };
})

module.exports = router;
