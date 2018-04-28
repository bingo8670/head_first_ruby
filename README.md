# Head First Ruby 学习笔记
ruby 术语：
- Fixnum :整数;
- Float :浮点数，即带小数点带小数；只要任意一个操作数是Float，Ruby就会提供一个Float；
- subclass :子类;
- superclass :超类;

ruby 技巧：
- class 方法会告诉你一个对象是哪个类的实例；
- format 方法用于格式序列及其宽度，%s = 字符串，%i = 向下整数，%f = 浮点数
- inspect 方法将一个对象转化为一个调试字符串；
- instance_variables 方法可查看某对象定义了哪些实例变量;
- methods 方法会告诉你一个对象有哪些实例方法；
- raise 方法可报告错误；
- super 关键字可以调用超类中的同名方法、超类方法的返回值作为super表达式的值、传入参数（参数传递给超类）；
-superclass 方法可查询某方法的超类，直到祖先链 Object；

ruby 常识：
- 实例变量属于对象而不属于类；
- 子类如果和超类有相同的方法，子类的方法会覆盖超类的方法；
-
