'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('include_lodging', {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false
      },
      id_lodging: {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'lodging', // nombre de la tabla relacionada (hospedajes)
          key: 'id_lodging'
        },
        onUpdate: 'CASCADE',
        onDelete: 'SET NULL'
      },
      id_include: {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'include', // nombre de la tabla relacionada (servicios)
          key: 'id_include'
        },
        onUpdate: 'CASCADE',
        onDelete: 'SET NULL'
      }
    });
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('include_lodging');
  }
};
