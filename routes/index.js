var express = require('express');
var router = express.Router();
const {pool, query} = require('../models/db');

router.get('/', async function (req, res, next) {
  try {
    const story = await query(
      'SELECT * FROM story where id = 1',
    );

    res.render('index', {
      story
    });
  } catch (e) {
    console.error(e);
    next(e);
  };
})

router.get('/:id', async function (req, res, next) {
  try {
    const story = await query(
      'SELECT * FROM story WHERE id = ?',
      req.params.id
    );

    res.render('index', {
      id: req.params.id,
      story: story
    });
  } catch (e) {
    console.error(e);
    next(e);
  };
})

module.exports = router;
