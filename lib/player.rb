
require 'pry'

class Player
	attr_accessor :name
	attr_accessor :life_points

	def initialize(name)
		@name = name
		@life_points = 10
	end

	def show_state
		unless life_points > 0
			print self.name
			puts " est mort(e) avec #{life_points} point(s) de vie"
		else
			print self.name
			puts " a #{life_points} point(s) de vie"
		end
	end

	def gets_damage(number_of_damage)
		@life_points = @life_points - number_of_damage
		if @life_points <=0
			puts "#{self.name} a été tué !"
		end
	end

	def attacks(player)
		puts "#{self.name} attaque #{player.name}"
		number_rand_damage = compute_damage
		player.gets_damage(number_rand_damage)
		puts "il/elle lui inflige #{number_rand_damage} point(s) de dommages"
	end

	def compute_damage
    	return rand(1..6)
  	end
