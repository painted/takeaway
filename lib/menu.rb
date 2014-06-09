require 'csv'

class Menu

	attr_reader :menu_items, :cocktail, :price

	def initialize
		@menu_items ||= []
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

	def load_menu_items(cocktail, price)
		@menu_items << {cocktail: cocktail, price: price}
	end

	def print_menu
		header
		@menu_items.each do |item|
			puts "#{item[:cocktail]} ... £ #{item[:price]}".center(100)
		end
	end

	def header
	puts "Welcome to Our Cocktail Bar".center(100)
	puts "---------------------------".center(100)
end

end