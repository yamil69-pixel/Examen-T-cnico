const { DataTypes } = require('sequelize');
const sequelize = require('../config/db');
const Categoria = require('./categoriaModel');
const Marca = require('./marcaModel');


const Producto = sequelize.define('Producto', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  nombre: {
    type: DataTypes.STRING,
    allowNull: false
  },
  precio: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: false
  },
  id_categoria: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: Categoria,
      key: 'id'
    }
  },
  id_marca: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: Marca,
      key: 'id'
    }
  }
}, {
  tableName: 'productos',
  timestamps: false 
});


Producto.belongsTo(Categoria, { foreignKey: 'id_categoria' });
Producto.belongsTo(Marca, { foreignKey: 'id_marca' });

module.exports = Producto;


