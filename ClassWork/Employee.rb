class Employee 
    attr_accessor :name, :title, :salary, :boss
    def initialize(name, salary, title, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(mulitplier)
        sum = @salary * mulitplier
        sum
    end
end
shawna = Employee.new("Shawna", 12000, "TA", "Darren")
david = Employee.new("David", 10000, "TA", "Darren")
p david.bonus(3)