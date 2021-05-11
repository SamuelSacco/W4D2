require_relative "./Employee.rb"

class Manager < Employee
    attr_accessor :subordinates
    def initialize(name, salary, title, boss = nil)
        super(name, salary, title, boss)
        @subordinates = []
    end

    def add_sub(employee)
        @subordinates << employee
    end

    def bonus(mulitplier)
        queue = @subordinates 
        (0...queue.length).each do |i|
            el = queue[i]
            if el.is_a?(Manager)
                queue += el.subordinates
            end
        end
        sum = queue.map(&:salary).sum * mulitplier
        # final = sum.to_s.split_at_index("_", -3)
    end

    # def bonus(mulitplier)
    #     queue = @subordinates 
    #     (0...queue.length).each do |i|
    #         el = queue[i]
    #         if el.is_a?(Manager)
    #             queue += el.subordinates
    #         end
    #     end
    #     sum = queue.map(&:salary).map(&:split()).map(&:to_i).sum * mulitplier
    #     sum.to_s + "_000"
    # end
end

ned = Manager.new("Ned", 1000000,"Founder")
darren = Manager.new("Darren", 78000, "TA Manager", "Ned")
shawna = Employee.new("Shawna", 12000, "TA", "Darren")
david = Employee.new("David", 10000, "TA", "Darren")

ned.add_sub(darren)


darren.add_sub(shawna)
darren.add_sub(david)
p ned.bonus(5)
p darren.bonus(4)