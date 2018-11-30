var express = require('express');
var router = express.Router();
var studentController = require('../controllers/admin/studentController');

/* GET home page admin. */
router.get('/', studentController.index);

module.exports = router;
