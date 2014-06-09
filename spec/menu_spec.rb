require 'menu'

describe 'Menu' do 

	let (:menu) {Menu.new}

	# it 'knows that a csv file exists of menu items' do
	# 	create_csv('menu.csv')
	# 	expect(File.exist?("menu.csv")).to be_true
	# end

	it 'reads data from the .csv file' do
		menu.load_menu('menu.csv')
		expect(menu.menu_items).to include({:cocktail=>"Cosmopolitan", :price=>"7"})
	end


	# it 'can print menu' do
	# 	menu = "Welcome to Our Cocktail Bar"
	# 	menu += "Cosmopolitan ... £ 7\n"
	# 	menu += "Please choose a cocktail\n"
	# 	expect(menu.print_menu).to eq menu
	# end 

end