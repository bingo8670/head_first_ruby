
class Steak
  include Comparable

  GRADE_SCORE = {"Prime" => 3, "Choice" => 2, "Select" => 1}

  attr_accessor :grade
  def <=>(other)
    if GRADE_SCORE[self.grade] < GRADE_SCORE[other.grade]
      return -1
    elsif GRADE_SCORE[self.grade] == GRADE_SCORE[other.grade]
      return 0
    else
      return 1
    end
  end

end

prime= Steak.new
prime.grade = "Prime"
choice= Steak.new
choice.grade = "Choice"
select = Steak.new
select.grade = "Select"

puts "prime > choice: #{prime > choice}"
puts "prime < select: #{prime < select}"
puts "select == select: #{select == select}"
puts "select <= select: #{select <= select}"
puts "select >= choice: #{select >= choice}"
print "choice.between?(select, prime): "
puts choice.between?(select, prime)
