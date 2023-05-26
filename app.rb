require_relative './teacher'
require_relative './student'
require_relative './person'
require_relative './rental'
require_relative './book'

class App
  def initialize
    @books = []
    @peoples = []
    @rentals = []
  end

  def list_books
    @books.each { |book| puts "Title: #{book.title} Author: #{book.author} \n" }
  end

  def list_peoples
    @peoples.each do |people|
      puts "[#{people.class.name}] Name: #{people.name} ID: #{people.id} Age: #{people.age} \n"
    end
  end

  def create_teacher(age, specialization, name)
    @peoples << Teacher.new(age, specialization, name: name)
  end

  def create_student(age, name, parent_permission)
    @peoples << Student.new(age, name: name, parent_permission: parent_permission)
  end

  def create_book
    puts 'Title:'
    title = gets.chomp.to_s
    puts 'Author:'
    author = gets.chomp.to_s
    @books << Book.new(title, author)
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each.with_index { |book, idx| puts "#{idx}) Book #{book.title} by #{book.author}" }
    book_index = gets.chomp.to_i
    puts 'Select a person from the following list by number(not ID)'
    @peoples.each.with_index do |person, idx|
      puts "#{idx}) [#{person.class.name}] Name #{person.name}, ID #{person.id}, Age #{person.age}"
    end
    person_index = gets.chomp.to_i
    puts 'Date:-'
    date = gets.chomp
    @rentals << Rental.new(@books[book_index], date, @peoples[person_index])
  end

  def list_person_rentals(person_id)
    @peoples.each do |person|
      if person.id == person_id
        puts 'Rentals:-'
        @rentals.each { |rental| puts "Date #{rental.date}, Book #{rental.book.title} by #{rental.book.author}" }
      end
    end
  end
end
