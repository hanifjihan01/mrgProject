import  sequelize  from "sequelize";

const db = new sequelize('mrg','root','',{
    host: 'localhost',
    dialect: 'mysql'
});

export default db;