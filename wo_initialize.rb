require 'pry'
class Pokemon
    attr_accessor :name, :moves, :type
  #writer/setter
#    def name=(name_of_pokemon)
#     @name = name_of_pokemon
#    end
#reader/getter
#     def name
#         @name
#     end
p = Pokemon.new 
p.name = "Charmander"
p.moves = ["Ember", "Fire Spin", "Scratch"]
p.type = "Fire"
   binding.pry 
end