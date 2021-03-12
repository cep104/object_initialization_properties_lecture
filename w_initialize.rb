require "pry"
$global = "hey check me out"
class Pokemon
    attr_accessor :name, :moves, :type, :color, :hp
    
    @@all = []

    def initialize(args_hash)
        args_hash.each do |key, value|

        # binding.pry
        self.send("#{key}=", value) 
    end
        # self.name = args_hash[:name]
        # self.moves = args_hash[:moves]
        # self.type = args_hash[:type]
        @@all << self
    end
    
    def self.all
        @@all
    end
    p = Pokemon.new({name:"Charmander", moves:["Ember", "Fire Spin", "Scratch"], type:"Fire", hp: 500, color:"Orange"})

    p_two = Pokemon.new({name:"Squirtle", moves:["Water Blast", "Bubble", "headbutt"], type:"Water", hp: 100, color:"Blue"})
    binding.pry
end



