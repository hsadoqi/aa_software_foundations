require "employee"

class Startup

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end 

    def name 
        @name
    end 

    def funding 
        @funding
    end

    def salaries 
        @salaries 
    end

    def employees 
        @employees 
    end 

    def valid_title?(title)
        salaries[title] ? true : false
    end

    def >(startup)
        funding > startup.funding
    end

    def hire(employee_name, title)
        if !salaries[title]
            raise "Title is not valid"
        else 
            employees << Employee.new(employee_name, title)
        end
    end

    def size 
        employees.length
    end

    def pay_employee(employee)
        employee_pay = salaries[employee.title]

        if funding > employee_pay
            employee.pay(employee_pay)
            @funding -= employee_pay
        else 
            raise "No more money"
        end
    end

    def payday
        @employees.each do |employee|
            pay_employee(employee)
        end
    end 

    def average_salary 
        @employees.reduce(0){ |sum, employee| sum += salaries[employee.title]} / @employees.length
    end

    def close 
        @employees = []
        @funding = 0
    end

    def acquire(startup)
        @funding += startup.funding

        startup.salaries.each do |title, salary|
            if !salaries.has_key?(title)
                salaries[title] = salary
            end
        end 

        @employees += startup.employees
        startup.close
    end

end
