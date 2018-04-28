# 雇员薪资发放，两周一结算，一种是年薪制，一种是小时制；
class Employee
  attr_reader :name

  def name=(name)
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def initialize(name = "Anonymous")
    self.name = name
  end

  def print_name
    puts "Name: #{name}"
  end
end

class SalariedEmployee < Employee
  attr_reader :salary    # 年薪员工特定属性

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end

  def initialize(name = "Anonymous", salary = 0.0)
    super(name)     # 调用Employee 中的“initialize” 设置姓名
    self.salary = salary
  end

  def print_pay_stub
    print_name      # 让超类打印名字
    pay_for_period = (self.salary / 365.0) * 14      # self 可省略
    formatted_pay = format("$%.2f", pay_for_period)   # 保留两位小数
    puts "Pay This Period: #{formatted_pay}"
  end
end

class HourlyEmployee < Employee
  def self.security_guard(name)
    # 类方法，用指定的名字以及预定义的时薪和每周工作小时数创建一个新实例--保安；
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    # 类方法，用指定的名字以及预定义的时薪和每周工作小时数创建一个新实例--出纳；
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    # 类方法，用指定的名字以及预定义的时薪和每周工作小时数创建一个新实例--门卫；
    HourlyEmployee.new(name, 10.50, 20)
  end

  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "An hourly wage of #{hourly_wage} isn't valid!"
    end
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "#{hours_per_week} hours per week isn't valid!"
    end
    @hours_per_week = hours_per_week
  end

  def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
    super(name)     # 调用Employee 中的“initialize” 设置姓名
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def print_pay_stub
    print_name   # 让超类打印姓名
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
end

salaried_employee = SalariedEmployee.new("Jone Doe", 50000)
salaried_employee.print_pay_stub

angela = HourlyEmployee.security_guard("Angela Matthews")
ivan = HourlyEmployee.cashier("Ivan Stokes")
angela.print_pay_stub
ivan.print_pay_stub
