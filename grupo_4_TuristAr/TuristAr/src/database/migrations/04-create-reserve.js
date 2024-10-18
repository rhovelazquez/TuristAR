'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('reserve', {
      id_reserve: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false
      },
      id_guest: {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'user', // tabla relacionada (usuarios)
          key: 'id'
        },
        onUpdate: 'CASCADE',
        onDelete: 'SET NULL'
      },
      id_lodging: {
        type: Sequelize.INTEGER,
        allowNull: true,
        references: {
          model: 'lodging', // tabla relacionada (hospedajes)
          key: 'id_lodging'
        },
        onUpdate: 'CASCADE',
        onDelete: 'SET NULL'
      },
      check_in: {
        type: Sequelize.DATE,
        allowNull: true
      },
      check_out: {
        type: Sequelize.DATE,
        allowNull: true
      },
      count_persons: {
        type: Sequelize.INTEGER,
        allowNull: true
      }
    });
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('reserve');
  }
};
