const express = require('express');
const router = express.Router();

router.get('/', async (req, res) => {
    res.render('index');
});

router.get('/gallerys', async (req, res) => {
    res.render('pages/gallerys');
});

router.get('/gastronomys', async (req, res) => {
    res.render('pages/gastronomys');
});

router.get('/tours', async (req, res) => {
    res.render('pages/tours');
});

router.get('/contacts', async (req, res) => {
    res.render('pages/contacts');
});

module.exports = router;