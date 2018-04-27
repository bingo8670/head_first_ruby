# 继承与覆盖
class Animal

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
    puts "#{@name} says Chirp! Chirp!"  # 鸟叫
  end

  def move(destination)
    puts "#{@name} Flying to the #{destination}"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

class Dog < Animal
  def talk
    puts "#{@name} says Bark!"
  end
end

class Bird < Animal
end

class Cat < Animal
  def talk
    puts "#{@name} says Meow!"
  end
end

bird = Bird.new
bird.name = "Polly"
bird.age = 3
bird.report_age
bird.talk
bird.move("bed")
