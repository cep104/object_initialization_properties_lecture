require 'pry'

class Pokemon
#even in its basic form we can create objects
#if i wanted to add properties to it right now could I? 
#if not why? 
#Biggest misconception people have is that you have to include an initialize method you don't have to
    
#gives us a reader and writer
    # attr_accessor :moves, :type, :name

    def name=(name) #.title=
        @name = name
    end 

    def name
        @name
    end 


binding.pry
end 
#show how it can get messy
p1 = Pokemon.new
p1.name = "Charmander"
p1.moves = ["Ember", "Fire Spin", "Scratch"]
p1.type = "Fire"
p1 

1. go over read me and what we went over Tuesday

2. create a class

3. ask if you could create an instance with just how it is set up now? 

4. if i wanted to add properties to it right now could  I? if not why?

5. talk about how you don't always need an initialize method. 

6.walk through doing a reader and a writer (old way) show how it gets messy 

p1 = Pokemon.new
p1.name = "Charmander"
p1.moves = ["Ember", "Fire Spin", "Scratch"]
p1.type = "Fire"
p1 

7. initialize object then use dot notation to add properties this is important because in your assesment you may get asked to break apart your initialize method and create your properties without the initialize method. 

8. talk about macros 
attr_accessor, attr_writter, attr_reader 
use symbols to put what we want our setter and getters to be. (look at document for macros)

look at document about initialization 