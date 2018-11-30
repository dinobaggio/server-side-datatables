var models = require('../../models');
var Student = models.student;

async function index (req, res, next) {
  try {
    let students = await Student.findAll();
    // if (students.length === 0) throw new Error('data tidak ditemukan');
    let objStudent = JSON.stringify(students);
    return res.render('admin/student', {title: 'Student', students:objStudent});
  } catch (err) {
    return res.render('error', {message:'error', error:err})
  }
}

const studentController = {
  index
};

module.exports = studentController;