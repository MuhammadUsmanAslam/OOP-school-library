require_relative './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name: 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.add_student(self) unless classroom.students.includes?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

person_usman = Person.new(23, parent_permission: true, name: 'Usman')
puts person_usman.play_hooky
