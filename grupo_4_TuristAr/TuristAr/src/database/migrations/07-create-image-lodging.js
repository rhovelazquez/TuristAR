'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('images_lodging', {
      id_image: {
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
      name: {
        type: Sequelize.STRING,
        allowNull: true
      }
    });
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('images_lodging');
  }
};
