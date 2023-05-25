class Rental
  attr_accessor :date, :book, :person

  def initialize(book, date, person)
    @book = book
    @date = date
    @person = person
  end
end
