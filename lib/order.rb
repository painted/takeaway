class Order
  require_relative './menu'

  def initialize
    @order_list = []
  end

  def add_items(menu_item)
    menu_item_references.each do |cocktail,price|
      # use if you make the order_list as a hash
      # @order_list[cocktail] = price.to_i if menu_item == cocktail 
      @order_list << {cocktail: cocktail, price: price.to_i} if menu_item == cocktail
    end
    @order_list
  end

  def drink_count
    @order_list.count
  end

  def menu_item_references
    a = Menu.new
    a.menu_reference
  end

  def calculate_cost
    @order_list.inject(0) do |total, order|
      total += order[:price]
    end
  end

  def display_to_s
    str = ""
    @order_list.each do |order|
      str+= "\n"
      str+= "#{order[:cocktail]} ..... £ #{order[:price]}"
    end
    str
  end


end