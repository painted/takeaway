class Order
  require_relative './menu'

  def initialize
    @order_list = {}
  end

  def add_items(menu_item)
    menu_item_references.each do |cocktail,price|
      @order_list[cocktail] = price.to_i if menu_item == cocktail
    end
    @order_list
  end

  def drink_count
    @order_list.length
  end

  def menu_item_references
    a = Menu.new
    a.menu_reference
  end


  def calculate_cost
    @order_list.values.reduce(:+)
  end

end