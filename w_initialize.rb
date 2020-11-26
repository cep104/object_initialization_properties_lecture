require 'pry'

class Recipe

    @@all = []

    #gives us a reader and writer
    attr_accessor :ingredients, :cook_time, :title


    # key: value
    # :key => value


    #upon object creation, these are rules i want you to follow 
    #.new will invoke initialize/ class method 
    #intitialize / instance method / called on the instance itself 
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



r = Recipe.new({cook_time: "2 hours", ingredients: ["oil", "herb"], title: "turkey", price: "2.00"})

