require_relative 'Person'

class Teacher < Person
  def initialize(id, name, age, parent_permission, specialization)
    super(id, name, age, parent_permission)
    @specialization = specialization
  end
end
