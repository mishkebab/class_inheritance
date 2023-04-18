require_relative "employee.rb"

class Manager < Employee
   def initialize(name, title, salary, boss, arr_emp)
    super(name, title, salary, boss)
    @arr_emp = arr_emp
   end 

   def bonus(multiplier)
    # bonus = 0
    # @arr_emp.each do |employee|
    #     bonus += employee.salary
    # end
    # return bonus * multiplier


    # (@arr_emp.inject(0) {|acc, emp| acc + emp.salary}) * multiplier
   end


end