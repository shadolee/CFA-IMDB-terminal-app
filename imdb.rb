class Person    # create class
# a person has...
  def initialize(name)   # method with name argument
    @name = name   # instantiate name variable
  end    # close method

  attr_accessor :name
end   # close class fundtion

class Actor < Person   # create new class and declare it a subclass, inheritance
  # a actor has...
  def initialize(name, acting_style) # method with 2 arguments
    super(name) # we inherit name from the superclass Person
    @acting_style = acting_style  # instantiate variable
  end   # close method function

  attr_accessor :acting_style   # getters & setters
end   # close class function

class Director < Person   # create new class and declare it a subclass
  def initialize(name, filmography) # create method with 2 arguments
  super(name)  # super calls the method of the parent class and passes arguments to the parent class
  @filmography = filmography  # instantiate variable
end  # close method function
end   # close class function

# class Junior_Director < Director
#   def initialize
#   end
# end

class Movie   # creates new class
  def initialize(title, description, actors, director)   # create method with 4 arguments
    @title = title   # instantiate variable attached to a class
    @description = description   # instantiate variable
    @actors = actors   # instantiate variable attached to a class
    @director = director   # instantiate variable attached to a class
  end   # close method function

attr_accessor :title, :description, :actors, :director   # setters & getters

  def self.search_movie  # create a method
    puts "Enter a movie to seach for: "
    input = gets.chomp.downcase!
    ObjectSpace.each_object(self).to_a.each do |input|
      if movie.title.downcase.include? input
        puts "Title: #{movie.title}\n Description: #{movie.description}\nActors: #{movie.actors}\nDirector: #{movie.director}"
        end
end

leo = Actor.new("Leo", "bad")
wallice = Director.new("wallice", "superbad4")
superbad4 = Movie.new("Superbad4", "test", leo, wallice)
superbad3 = Movie.new("Superbad3", "test", [leo, leo], wallice)

puts Movie.all.count
puts "This is the actors: "
puts superbad4.actors

puts "=" * 15
Movie.all.each do |movie|
  puts movie.title
end
end
end 
