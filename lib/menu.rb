require 'csv'

class Menu

	attr_reader :menu_items, :cocktail, :price

	# def initialize
	# 	@menu_items ||= []
	# end
	def menu_list
		@menu_items ||= []
	end
	# def menu_items
	# 	@menu_items
	# end
	# def create_csv(filename)
	# 	CSV.open(filename, 'a')
	# end

	def load_menu(filename)
		file = File.open(filename, 'r')
		file.readlines.each do |line|
			cocktail, price = line.chomp.split(',')
			load_menu_items(cocktail, price)
		end
		file.close
	end

	def load_menu_items(cocktail, price)
		@menu_items << {cocktail: cocktail, price: price}
	end

end