require_relative "employee.rb"

class Manager < Employee
   def initialize(name, title, salary, boss, arr_emp)
    super(name, title, salary, boss)
    @arr_emp = arr_emp
   end 

   def cum_salary
      cum_sum = salary
      @arr_emp.each do |emp|
         cum_sum += emp.cum_salary
      end
      return cum_sum 
   end 

   def bonus(multiplier)
      return (cum_salary - salary) * multiplier
      # (@arr_emp.inject(salary) {|acc, emp| acc + emp.salary}) * multiplier
   end


end