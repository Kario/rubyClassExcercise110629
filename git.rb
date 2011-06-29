
module ADrinkWithThat
	class Pop
		def self.pepsi
			"Ah, the cold bite of this really hits the spot!"
		end
		
		def self.drPepper
			print "Blech, Theres too many flavors in this!"
		end
	end
	
	class Juice
		def orangeJuice
			"mmmmm Oranges...."
		end
		
		def tang
			print "Its a kick in a glass!"
		end
	end
	
end


module Makeitbetter
		attr_accessor :condiment
		
		def initialize(condiment = "Tobasco Sauce")
			@condiment = condiment
		end
		
		def addCondiment
			"mmmm... This #{@condiment} will make it taste better..."
		end
end


class Lunch
	include Makeitbetter
	def self.buyFood
		"Bought a burger, Alllright!"
	end
	
	def self.drink
		print "\nIce Cold Water"
	end
	
	def eatWhatsHere
		"Yuck."
	end

	
end


class Dinner
	include Makeitbetter
	
	
	
end
	
	
wednesday = Lunch.new
puts wednesday.eatWhatsHere
puts Lunch.buyFood
puts wednesday.addCondiment
wednesday.condiment = "Salt"
puts wednesday.addCondiment

drink = ADrinkWithThat::Pop.pepsi
print drink + "\n"
ADrinkWithThat::Pop.drPepper 
print "\n" + ADrinkWithThat::Juice.new.orangeJuice

module ADrinkWithThat 
	class Lunch < Lunch
	def temperature (temp)
		"Water at a nice #{temp} temperature, delicious!"
	end
	
	end
	
	
end

print "\n" + ADrinkWithThat::Lunch.new.temperature("HOT")

