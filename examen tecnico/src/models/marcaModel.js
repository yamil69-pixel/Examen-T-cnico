const { DataTypes } = require('sequelize');
const sequelize = require('../config/db');

const Marca = sequelize.define('Marca', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  nombre: {
    type: DataTypes.STRING,
    allowNull: false
  }
}, {
  tableName: 'marcas',
  timestamps: false
});

module.exports = Marca;