'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('lodging', {
      id_lodging: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false
      },
      name: {
        type: Sequelize.STRING,
        allowNull: true
      },
      description: {
        type: Sequelize.STRING,
        allowNull: true
      },
      price: {
        type: Sequelize.BIGINT,
        allowNull: true
      },
      persons: {
        type: Sequelize.INTEGER,
        allowNull: true
      },
      id_user: {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'user', // nombre de la tabla relacionada (dueño del hospedaje)
          key: 'id'
        },
        onUpdate: 'CASCADE',
        onDelete: 'SET NULL'
      },
      province: {
        type: Sequelize.STRING,
        allowNull: true
      },
      locality: {
        type: Sequelize.STRING,
        allowNull: true
      },
      street: {
        type: Sequelize.STRING,
        allowNull: true
      }
    });
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('lodging');
  }
};
