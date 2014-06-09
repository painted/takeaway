require 'menu'

describe 'Menu' do 

	let (:menu) {Menu.new}

	# it 'knows that a csv file exists of menu items' do
	# 	create_csv('menu.csv')
	# 	expect(File.exist?("menu.csv")).to be_true
	# end

	it 'reads data from the .csv file' do
		menu.load_menu('menu.csv')
		expect(@menu_items).to eq 'Cosmopolitan'
	end

end