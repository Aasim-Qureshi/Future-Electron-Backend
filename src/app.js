const express = require('express');
const bodyParser = require('express').json;
const morgan = require('morgan');


const app = express();


app.use(morgan('dev'));
app.use(bodyParser());


app.get('/health', (req, res) => res.json({ ok: true }));

module.exports = app;