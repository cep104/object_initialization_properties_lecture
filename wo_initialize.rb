require 'pry'

class Recipe

    #gives us a reader and writer
    attr_accessor :title, :ingredients, :cook_time

    # def title=(title) #.title=
    #     @title = title
    # end 

    # def title 
    #     @title
    # end 


binding.pry
end 

r = Recipe.new
r.title = "Turkey"
r.ingredients = ["oil", "butter", "herbs"]
r.cook_time = "1"
r 
