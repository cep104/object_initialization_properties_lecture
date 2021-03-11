require 'pry'

class Pokemon

    @@all = []

    #gives us a reader and writer
    attr_accessor :moves, :type, :name


    # key: value
    # :key => value


    #upon object creation, these are rules i want you to follow 
    #.new will invoke initialize
#    what kind of method is .new?
#what kind of method is an initialize? (instance no self before)
    #intitialize / instance   method / called on the instance itself 
    def initialize(args_hash)
        #mass assignment/ metaprogramming/ most optimal 
        args_hash.each do |key, value|
            self.send("#{key}=", value) 
        end 
        # self.title = title
        # self.ingredients = ingredients
        # self.cook_time = cook_time
        @@all << self
    end 

    def self.all #class method 
        @@all
    end 

    # def title=(title) #.title=
    #     @title = title
    # end 

    # def title 
    #     @title
    # end 


binding.pry
end 



r = Recipe.new({name: "Charlizard", ingredients: ["oil", "herb"], title: "turkey", price: "2.00"})

def initialize(moves, type, name)
    @moves = moves
    @type = type
    @name = name
end
-would this work? without attr_accessor? 
try it out in pry 
-create a Pokemon.new see what errors we get 
-when you call .new it is expecting for you to follow the rules you are setting up 
-create with values 
-show how the order matters when entering arguments. 
-show how it cleans up our code that one line is same as other 4 lines. 
-show that declairing instance variables does not depend on an attr_accessor but how you can't change or access with out them. 
- there is a more efficent way than doing our instance variables. They may not show it in the lesson but I want to show you. 
self.name = name
self.type = type
self.moves = moves
what am I invoking here by calling .name = ? 
this is a more efficant way to do this by invoking the attr_accessor. 
    show how to do default valuables (setting to nil to avoid argument error and still be able to set those properties)

show how to make it even more dynamic? 
change to keys 
def initialize(name:, moves:, type: )
-set as keys 
end

p = Pokemon.new(name: "charmeleon", moves: ["Ember", "Fire Spin", "Scratch"], type: "Fire")
-set to keys and now you can change the order in initilize. 
-make sure you use the right key value pairs 

best way to initialize and the most flexable is passing in hashes and mass assignment. 

def initialize(args_hash)
    how to I access a hashes key value?
@name = args_hash[:name]
end
#wrap in hash
p = Pokemon.new({name: "charmeleon", moves: ["Ember", "Fire Spin", "Scratch"], type: "Fire"})
using mass assignment what if you have 30 different attrubues??
 -still pass a hash 
 -iterate over the hash and use method called send which will use a setter method to set those keys to those values
def initialize(args_hash)
args_hash.each do |key, value|
 self.send("#{key}=", value)
 -interpolate over the key, we do this because we want to add that = to it. ex. name= 
    - what this does is sets that key to the value we are passing in the hash. So now we can initialize with a ton of properties (instance variables). 
end
end


