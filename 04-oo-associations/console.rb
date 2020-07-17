require 'pry'
require_relative './app/models/user'
require_relative './app/models/animal'


vlad = User.new("Vlad", 21, 1234)
jeff = User.new("Jeff", 21, 1234)
jenn = User.new("Jennifer", 21, 1234, "Jenn")
# jennifer = User.new("Jennifer", 21, 1234, "Jenny")

bob = Animal.new("snake", "Bob", "hiss", jenn)
coco = Animal.new("dog", "Coco", "bark bark", jeff)
momo = Animal.new("flying lemur", "momo", "slkdfjlsk", jenn)
sophie = Animal.new("husky", "sophie", "woof woof", jeff)


  class Shelter #<=== can have many
     attr_accessor :name 
    
     @@all = []

    def intialize(name)
        @name = name
        @@all << self
    end

    def self.all
       @@all 
    end

    def find_all_adopted
        Animal.all.map do |pet|
        if pet.owner != nil
            pet    
            end
        end
    end

    def find_by_shelter_name
        Animal.all.map do |pet|
        if pet.name == nil
            pet
        end
    end

  end

#---------------------------------------------

    class Animal#<=== belongs to
        attr_accessor :name, :owner
        @@all = []
        
           def intialize(name, owner = nil)
                @name = name
                @owner = owner
                @shelter
                @super_power
                @@all << self
           end
        
           def self.all
               @@all 
           end
        
        end 
#----------------------------------------------
    class Owner  #<== User Class, as in example
    attr_accessor :name 
        
    @@all = []
        
           def intialize(name)
                @name = name
                @@all << self
           end
        
           def self.all
               @@all 
           end

           def abandon(name)
            Animal.all.select do |a|
            if a.owner == self
                a.owner = nil 
                a.shelter = "In a shelter !!!! :("
                a.name = nil
            end
            
            def find_in_shelter
                Animal.all.collect do |pet|
                if a.shelter != nil 
                    pet
                end
           end

           def find_all_adopted
           Animal.all.select do |a|
           end
           end

           def mutate_pet(name)
            Animal.all.select do |a|
                if a.name == name
                    mutate = "Radio-active & Dangerous !!!"
                    puts "Congrats, you've upset the delicate balance of nature...." 
                end
              end       
            end

            

            



## Practice
- Shelters 
- Animal can belong to one shelter
- Shelter can have many animals 
- Methods...
   # - find_all_in_shelter: which find all the animals that are curently in a shelter 
   # - find_all_adopted: which find all the animals that are curently adopted / have an owner
    - find_by_shelter: by shelter name
    - ... the world is your oyster!