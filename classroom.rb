class Classroom
  attr_accessor :label
  attr_reader :students

  def intialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student
    student.classroom = self unless Student.classroom == self
  end
end
