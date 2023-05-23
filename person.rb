class Person
  def initialize(id, age, name: 'Unknown', parent_permission: true)
    @id = id
    @id = id
    @age = age
    @parent_permission = parent_permission
    @name = name
  end

  #  *:name and :age instance variables are the only ones that should be able
  #  to be modified that's why they are defined as attr_accessors (here both Getters and Setters are defined)
  attr_accessor :name, :age

  # *:id should only be able to be retrieved so only the Getter is defined
  attr_reader :id

  # if age is greater than 18 or not
  def of_age?
    return true if @age >= 18

    false
  end

  # can_use_services method
  def can_use_services?
    return true if of_age || @parent_permission

    false
  end
end
