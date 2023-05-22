require_relative 'Person'

class Student < Person
  def initialize(id, name, age, parent_permission, classroom)
    super(id, name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
