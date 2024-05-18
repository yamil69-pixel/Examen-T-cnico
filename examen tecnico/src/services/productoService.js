const Producto = require('../models/productoModel');
const Marca = require('../models/marcaModel');
const Categoria = require('../models/categoriaModel');

exports.productosConMarcaCategoria = async () => {
  try {
    const productos = await Producto.findAll({
      include: [
        { model: Categoria },
        { model: Marca }
      ]
    })
    return productos;
  } catch (error) {
    throw new Error(error.message);
  }
};




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