# your code goes here
require 'pry'

class Person
    attr_reader :name, :happiness
    attr_accessor :bank_balance

    def initialize(name)
        @name = name
        @happiness_index = 8 
        @bank_balance = 25
        @hygiene_index = 8
    end

    def bank_account
        @bank_balance 
    end

    def bank_account=(deposit)
        @bank_balance += deposit
    end



    def happiness=(happy_point)
        @happiness_score = happy_point 
    end


    def hygiene=(hygiene_point)
        @hygiene_index = hygiene_point.clamp
    end


    def happy?
        if @happiness_score > 7 
            return true 
        else 
            return false 
        end
    end


    def clean?
        if @hygiene_index > 7 
            return true 
        else 
            return false 
        end

    end

    def get_paid(salary)
        @salary = salary 
        @bank_balance += @salary
        return "all about the benjamins"
    end

    def take_bath
        @hygiene_index += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness_score += 2 
        @hygiene_index -= 3 
        return "♪ another one bites the dust ♫"
    end
    
    def call_friend

    end


    def start_conversation

    end


end
