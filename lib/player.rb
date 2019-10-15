require'pry'

class Player
    attr_accessor :name, :life_points

    def initialize(name, life_points = 10)
      @name = name
      @life_points = life_points
      end

    def show_estate
    puts "#{@name} a #{@life_points} points de vie"
    end

  def gets_damage
@life_points = 10
    x = compute_damage

    @life_points = @life_points - x

    if @life_points <= 0
      puts "#{@name} est mort"
    else
      puts "#{@name} doit faire attention"
    end
    end

def compute_damage
      return rand(1..6)
end
  def attacks(player2)
   player2.gets_damage

    puts "le joueur #{@name} attaque le joueur #{player2.name}"
    puts "Il lui inflige #{compute_damage} de points de dommages"
    end
end

binding.pry
