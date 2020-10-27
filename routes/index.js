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

module.exports = router;
