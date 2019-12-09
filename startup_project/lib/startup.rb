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
        salaries[title]
    end


end
