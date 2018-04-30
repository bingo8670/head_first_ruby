require 'minitest/autorun'
require 'list_with_commas'

class TestListWithCommas < Minitest::Test
  def setup
    @list = ListWithCommas.new
    # 建立实例方便其他测试用例引用
  end

  def test_it_prints_one_word_alone
   # list = ListWithCommas.new
    @list.items = ['apple']
    assert('apple', @list.join)
  end

  def test_it_joins_two_words_with_and
    #list = ListWithCommas.new
    @list.items = ['apple', 'orange']
    assert('apple and orange', @list.join)
  end

  def test_it_joins_three_words_with_commas
    #list = ListWithCommas.new
    @list.items = ['apple', 'orange', 'pear']
    assert('apple, orange, and pear', @list.join)
  end
end

