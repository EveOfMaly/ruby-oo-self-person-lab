# your code goes here
require 'pry'


class Person 
    attr_reader :name, :happiness,  :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
   end

   def happiness=(happiness_point)
    @happiness = happiness_point

    @happiness = 10 if @happiness > 10 
    @happiness= 0 if @happiness < 0 

   end

   def hygiene=(hygiene_point)
    @hygiene = hygiene_point

    @hygiene = 10 if @hygiene > 10 
    @hygiene = 0 if @hygiene < 0 

   end

    def happy?
        @happiness > 7 
    end

   def clean?
    @hygiene > 7
   end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end


    def take_bath
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3 
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3 
        friend.happiness += 3 
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)

        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
           return  "blah blah sun blah rain"
        else 
           return  "blah blah blah blah blah"
        end


    end





end 