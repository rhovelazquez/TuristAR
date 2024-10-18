'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('user', {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false
      },
      name: {
        type: Sequelize.STRING,
        allowNull: true
      },
      last_name: {
        type: Sequelize.STRING,
        allowNull: true
      },
      email: {
        type: Sequelize.STRING,
        allowNull: false,
        unique: true
      },
      password: {
        type: Sequelize.STRING,
        allowNull: false
      },
      password2: {
        type: Sequelize.STRING,
        allowNull: true // Asumí que no es obligatorio
      },
      image: {
        type: Sequelize.STRING,
        allowNull: true
      },
      phone: {
        type: Sequelize.BIGINT,
        allowNull: true
      },
      birth_day: {
        type: Sequelize.DATE,
        allowNull: true
      },
      genre:{
        type:Sequelize.STRING,
        allowNull: true
      }
      

    });
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('user');
  }
};
