var express = require('express');
var router = express.Router();
var studentApiController = require('../controllers/api/studentApiController');

router.get('/student', studentApiController.getStudent);

module.exports = router;