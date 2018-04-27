class Bird

  attr_accessor :name, :age
  # attr_accessor等效于：attr_writer + attr_reader
  #
  # == attr_writer===
  # def name=(new_value)
  # @name = new_value
  # end
  #
  # == attr_reader ===
  # def name
  # @name
  # end
  #
  # def age=(new_value)
  # @age = new_value
  # end
  # def age
  # @age
  # end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
      # raise an issue, 产生问题，raise 是ruby内置方法，用来报告错误；
    end
    @age = value
  end

  def talk
    puts "#{@name} says Chirp! Chirp!"
  end

  def move(destination)
    puts "#{@name} Flying to the #{destination}"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

class Dog
  def talk(name)
    puts "#{name} says Bark!"
  end
  def move(name, destination)
    puts "#{name} Running to the #{destination}"
  end
end

class Cat
  def talk(name)
    puts "#{name} says Meow!"
  end
  def move(name, destination)
    puts "#{name} Running to the #{destination}"
  end
end

bird = Bird.new
bird.name = "Poli"
bird.age = 3
bird.report_age
bird.talk
bird.move("bed")

