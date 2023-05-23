require_relative 'Person'

class Teacher < Person
  def initialize(id, age, specialization, name: 'Unknown', parent_permission: true)
    super(id, name, age, parent_permission)
    @specialization = specialization
  end
end
