# 猜数字

puts "welcome to 'Get My Number!'"
print "What's your name? "

input = gets
name = input.chomp
# chomp 方法用于删除字符串末尾的转义符，也可带参数删除末尾的多个字符。
puts "welcome, #{name}!"
# 字符串内插只能用双引号，用单引号的话会原样显示；

# 存储一个随机数供玩家猜
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1
# rand 方法用于取一个0到n 之间的随机数，默认为1；

# Track how many guesses the player has made.
num_guesses = 0

# Track whether the player has guessed correctly.
guessed_it = false

until num_guesses == 10 || guessed_it
  puts "You've got #{10 - num_guesses} guesses left."
  print "Make a guess: "
  guess = gets.to_i

  num_guesses += 1

  # Compare the guess to the target.
  # Print the appropriate message.
  if guess < target
    puts "Oops. Your guess was LOW."
  elsif guess > target
    puts "Oops. Your guess was HIGH."
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end
end

# if player raj out of turns, tell them what the number was.
unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target}.)"
end
