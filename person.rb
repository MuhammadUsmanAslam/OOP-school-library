class Person
  def initialize(id, age, parent_permission: true, name: 'Unknown')
    @id = id
    @id = id
    @age = age
    @parent_permission = parent_permission
    @name = name
  end

  def add_id(id)
    @id = id
  end

  # Get name method
  def add_name(name)
    @name = name
  end

  # Get age method
  def add_age(age)
    @age = age
  end

  # name Setter method
  def name(name)
    @name = name
  end

  # age Setter method
  def age(age)
    @age = age
  end

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
