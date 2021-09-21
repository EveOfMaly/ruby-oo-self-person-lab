# your code goes here

class Person
    attr_reader :name
    attr_reader :bank_balance

    def initialize(name)
        @name = name
        @happiness = 8 
        @bank_balance = 25
        @hygiene = 8
    end

    def bank_account
        @bank_balance 
    end

    def bank_account=(deposit)
        @bank_balance = deposit
    end

    def happiness
        @happiness 
    end


    def happiness=(happy_index)
        @happiness = happy_index.clamp(0, 10) #takes a min and max of two argument to define the range in which the given arguments should be clamped
    end

    def hygiene
        @hygiene
    end

    def hygiene=(hygiene_index)
        @hygiene = hygiene_index.clamp(0, 10)
    end


  


 


     

end
