class Animal
    attr_accessor :type, :name, :speak, :owner
    @@all = []

    def initialize(type, name, speak, owner=nil)
        @type = type
        @name = name
        @speak = speak
        @owner = owner
        Animal.all << self
    end

    ## a class method to find all animals who dont have a home yet :(
    def find_all_homeless
        Animal.all.map do |pet|
          if  pet.owner == nil
                pet
          end 
        end
    end
    
    def self.all 
        @@all
    end

    def say_hello
        puts "#{self.name} says #{self.speak}!"
    end

end