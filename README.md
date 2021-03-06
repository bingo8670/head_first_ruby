# Head First Ruby 学习笔记
ruby 术语：
- Fixnum :整数;
- Float :浮点数，即带小数点带小数；只要任意一个操作数是Float，Ruby就会提供一个Float；
- subclass :子类;
- superclass :超类;

ruby 技巧：
- 如果一个方法定义的最好一个参数前面加了一个“&”字符，Ruby会认为调用这个方法时需要关联一个快；
- 单例方法，只能在一个实例上调用的实例方法，在单元测试中很有用；
- ARGV数组，可访问调用脚本时提供的参数，每次运行一个ruby程序都会建立这个数组，第一个参数位于ARGV[o]，第二个位于ARGV[1]，以此类推；
- begin--end 方法用来处理异常信息；rescue 子句在出现异常后执行，增加retry
  关键字可重新运行外围begin--end 块中的代码。ensure 子句会在begin--end
  块退出前运行，而不论是否产生了异常。
- class 方法会告诉你一个对象是哪个类的实例；
- CSV(Comma-Seoarated
  Values，逗号分割值)，一种纯文本格式，行分隔为文本行，列由逗号分隔；
- find_all 方法会保留相应的匹配项；
- find_index 方法可提取匹配项在数组中的索引值；
- format 方法用于格式序列及其宽度，%s = 字符串，%i = 向下整数，%f = 浮点数
- include? 方法用于判断字符串中是否有匹配项，返回true/false；
- inspect 方法将一个对象转化为一个调试字符串，包含对象ID 的十六进制；
- instance_variables 方法可查看某对象定义了哪些实例变量;
- map
方法可基于一个数组创建另一个数组，取一个数组的各个元素，把它传递给一个块，再由块返回的值建立一个新的数组；
- methods 方法会告诉你一个对象有哪些实例方法；
- object_id 方法可用于查看对象的id;
- raise 方法可报告错误；
- Rake 工具自动完成任务，Rakefile; Rake::TestTask 类专门用来运行测试；
- reject 方法会剔除相应的匹配项；
- super
关键字可以调用超类中的同名方法、超类方法的返回值作为super表达式的值、传入参数（参数传递给超类）；
-superclass 方法可查询某方法的超类，直到祖先链 Object；
- TDD ：test driven development，测试驱动开发，通过红-绿-重构循环开发；
- yield 关键字会查找并调用随方法调用提供的块；
- 内联条件语句会用更少的代码做更多的工作，内联if 和 unless;

ruby 常识：
- 实例变量属于对象而不属于类；
- 子类如果和超类有相同的方法，子类的方法会覆盖超类的方法；
- 方法调用中，如果散列参数是最后一个参数，可省略大括号；
- 任何Ruby 表达式都可以用在条件语句中。除了false 布尔值以外， Ruby只把nil
  作为false 处理；
- Ruby 文档中，实例方法通常用# 标记，类方法用. 或::(作用域解析操作符)标记；
- 如果为测试类增加了一个setup
  实例方法，会在每个测试方法之前调用。这个方法可以用来建立对象，从而在测试中使用；
- 如果为测试类增加一个teardown
  实例方法，会在每个测试之后调用，。这个方法可以用来运行测试清理代码；

