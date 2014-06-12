require './lib/menu' 
require './lib/order'

def input_order(order)
  menu_item = STDIN.gets.chomp
  while !menu_item.empty? do
    order.add_items(menu_item)
    puts order.display_header_total_and_query_for_more
    menu_item = STDIN.gets.chomp
  end
end

order = Order.new
menu = Menu.new
menu.load_menu('menu.csv')
puts menu.header.center(100)
puts menu.to_s.center(100)
puts "Can I take your order?"
input_order(order)
puts "Please see order details below"
puts order.display_header
puts order.display_to_s
puts order.display_total
puts "If there are any errors please let us know asap"


