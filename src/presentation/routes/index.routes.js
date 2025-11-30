const express = require('express');
const reportRoutes = require('./report.routes');

const router = express.Router();

router.use('/report', reportRoutes);
router.get('/health', (req, res) => res.json({ ok: true }));

module.exports = router;