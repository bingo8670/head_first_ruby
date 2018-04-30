# 单元测试
# MiniTest：Ruby 的标准单元测试库
require 'minitest/autorun'    # 加载MiniTest

class TestSomething < MiniTest::Test     # 创建MiniTest::Test 的子类
  def test_true_assertion
    assert(true)
  end

  def test_false_assertion
    assert(false)
  end
end

