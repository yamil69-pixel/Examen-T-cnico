const productoService = require('../services/productoService');

exports.productosConMarcaCategoria = async (req, res) => {
  try {
    const productos = await productoService.productosConMarcaCategoria();
    res.status(200).json(productos);  
  } catch (error) {
    console.error(error);
    res.status(500).json({ mensaje: error.message });
  }
};