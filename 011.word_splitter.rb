class WordSplitter
  include Enumerable

  attr_accessor :string

  def each
    string.split(" ").each do |word|
      yield word
    end
  end

end

splitter = WordSplitter.new
splitter.string = "how do you do"

p splitter.find_all { |word| word.include?("d") } # 找出所以含d 的单词
p splitter.reject { |word| word.include?("d") }   # 剔除含d 的单词
p splitter.map { |word| word.reverse }  # 倒序

p splitter.any? { |word| word.include?("e") }

# 下面几种方法不需要块
p splitter.count
p splitter.first
p splitter.sort
