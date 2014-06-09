require './lib/menu'

menu = Menu.new
menu.load_menu('menu.csv')
puts menu.header.center(100)
puts menu.to_s.center(100)