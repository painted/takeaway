require './lib/menu' 
require './lib/order'

order = Order.new
menu = Menu.new
menu.load_menu('menu.csv')
puts menu.header.center(100)
puts menu.to_s.center(100)
order.input_order
puts "Please see order details below"
puts order.display_header
puts order.display_to_s
puts order.display_total
puts "If there are any errors please let us know asap"


