require_relative './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, name: 'Unknown', parent_permission: true, classroom: 'unknown')
    super(age, name: name, parent_permission: parent_permission)
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

# person_usman = Person.new(23, parent_permission: true, name: 'Usman')
# puts person_usman.play_hooky
