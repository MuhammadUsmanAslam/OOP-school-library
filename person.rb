require_relative './nameable'
require_relative './decorator'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'

class Person < Nameable
  def initialize(age, name: 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @age = age
    @parent_permission = parent_permission
    @name = name
    @rentals = []
    super()
  end

  #  *:name and :age instance variables are the only ones that should be able
  #  to be modified that's why they are defined as attr_accessors (here both Getters and Setters are defined)
  attr_accessor :name, :age, :parent_permission, :rentals

  # *:id should only be able to be retrieved so only the Getter is defined
  attr_reader :id

  # correct_name method which retuns name
  def correct_name
    @name
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

  def add_rental(book, date)
    Rental.new(book, date, self)
  end
end

# person = Person.new(22, name: 'maximilianus')
# puts person.correct_name

# capitalized_person = CapitalizeDecorator.new(person)
# puts capitalized_person.correct_name

# capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
# puts capitalized_trimmed_person.correct_name
