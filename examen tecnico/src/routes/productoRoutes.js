const express = require('express');
const productoController = require('../controllers/productoController');

const router = express.Router();

router.get('/', productoController.productosConMarcaCategoria);

module.exports = router;