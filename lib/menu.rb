require 'csv'

class Menu

	attr_reader :menu_items

	def initialize
		@menu_items ||= {}
	end

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

	def menu_reference(filename = "menu.csv")
		load_menu(filename)
		@menu_items
	end

	def load_menu_items(cocktail, price)
		@menu_items[cocktail] = price
	end

	def to_s
		str = ""
		@menu_items.each do |name, price|
			str+= "\n"
			str+= "#{name} ..... £ #{price}"
		end
		str
	end

	def header
		str = "Welcome to Our Cocktail Bar"
		str += "\n"
		str += "---------------------------"
		str
	end

end