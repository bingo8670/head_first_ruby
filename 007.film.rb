# 搜索一个庞大的单词集合
lines = []

File.open("reviews.text") do |review_file|
  lines = review_file.readlines
end

#relevant_lines = []    # 评论数组
#lines.each do |line|
#  if line.include?("Truncated")
#    relevant_lines << line    # 把当前行增加到评论数组
#  end
#end
# 注释部分等效于下面的代码
relevant_lines = lines.find_all{ |line| line.include?("Truncated")}   # 保留包含所选项的元素

reviews = relevant_lines.reject{|line| line.include?("--")}           # 剔除包含所选项的元素

def find_adjective(string)
  words = string.split("")
  index = words.find_index("is")
  words[index + 1]    # is 后面的单词为匹配的形容词
end

adjectives = reviews.map do |review|
  adjective = find_adjective(review)
  "'#{adjective.capitalize}'"
end

puts "The critics agree, Truncated is : "
puts adjectives

