class Rental
  attr_accessor :date, :book, :person

  def initialize(book, date, person)
    @book = book
    book.rentals << self
    @date = date
    @person = person
    person.rentals << self
  end
end
