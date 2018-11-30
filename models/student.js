'use strict';
module.exports = (sequelize, DataTypes) => {
  const student = sequelize.define('student', {
    code: DataTypes.INTEGER,
    name: DataTypes.STRING,
    department: DataTypes.STRING,
    age: DataTypes.INTEGER,
    birthday: DataTypes.DATE,
    salary: DataTypes.INTEGER
  }, {
    tableName: 'student'
  });
  student.associate = function(models) {
    // associations can be defined here
  };
  return student;
};