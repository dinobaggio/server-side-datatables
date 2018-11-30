var models = require('../../models');
var Student = models.student;

async function getStudent(req,res) {
  try {
    console.log("=== ini query", req.query);
    let {draw, length, start, columns, search, order} = req.query;

    if (!draw) draw = 1;
    if (!length) length = 10;
    if (!start) start = 0;

    let attributes = Object.keys(Student.rawAttributes);
    let condition = {};
    if (search.value) condition.name = {
      $like: `%${search.value}%`
    }
    for (let column of columns) {
      // console.log('=== ini field search', column.search);
      if (column.search.value) {
        condition[column.data] = {
          $like: `%${column.search.value}%`
        };
      }
    }

    let ordering = [];

    for (let sortir of order) {
      ordering.push([attributes[Number(sortir.column)+1], sortir.dir]);
    }


    let students = await Student.findAndCountAll({
      offset: parseInt(start),
      limit: parseInt(length),
      where:condition,
      order:ordering
    });
    let recordsTotal = await Student.count();

    return res.status(200).json({
      message:'success',
      data: students.rows,
      recordsFiltered: students.count,
      recordsTotal,
      draw
    });
    
  } catch (err) {
    return res.status(500).json({message:err.message});
  }
}

const studentApiController = {
  getStudent
};

module.exports = studentApiController;