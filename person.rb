class Person
  def initialize(id, age, name: 'Unknown', parent_permission: true)
    @id = id
    @id = id
    @age = age
    @parent_permission = parent_permission
    @name = name
  end

  # Setter method for id
  def add_id(id)
    @id = id
  end

  # Setter method for name
  def add_name=(name)
    @name = name
  end

  # Setter method for age
  def add_age=(age)
    @age = age
  end

  # Getter method for id
  attr_reader :id

  # Getter method for name
  attr_reader :name

  # Getter method for age
  attr_reader :age

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
