const { Sequelize } = require('sequelize');
require('dotenv').config();

const requiredEnvVariables = ['DB_NAME', 'DB_USER', 'DB_PASSWORD', 'DB_HOST'];
const missingEnvVariables = requiredEnvVariables.filter(env => !process.env[env]);

if (missingEnvVariables.length > 0) {
    throw new Error(`Faltan las siguientes variables de entorno: ${missingEnvVariables.join(', ')}`);
}

const sequelize = new Sequelize(
    process.env.DB_NAME,
    process.env.DB_USER,
    process.env.DB_PASSWORD, {
    host: process.env.DB_HOST,
    dialect: 'mysql'
    }
);

sequelize.authenticate()
    .then(() => {
        console.log('La conexión a la base de datos ha sido establecida exitosamente.');
    })
    .catch(err => {
        console.error('No se puede conectar a la base de datos:', err);
    });

module.exports = sequelize;