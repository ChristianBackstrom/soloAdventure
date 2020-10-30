var express = require('express');
var router = express.Router();
const {pool, query} = require('../models/db');

router.get('/', async function (req, res, next) {
  try {
    const story = await query(
      'SELECT * FROM story where id = 1',
    );

    const links = await query (
      'SELECT * FROM links where story_id = 1'
    );

    res.render('story', {
      story: story,
      links: links
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

    const links = await query(
      'SELECT * FROM links WHERE story_id = ?',
      req.params.id
    )

    res.render('story', {
      id: req.params.id,
      story: story,
      links: links
    });
  } catch (e) {
    console.error(e);
    next(e);
  };
})

module.exports = router;
