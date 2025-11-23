const express = require('express');
const reportController = require('../controllers/report.controller');

const router = express.Router();

router.post('/createReport', reportController.createReport);

module.exports = router;