class Order

  def initialize
    @drink_count = 0
    @order_list = []
  end

  def add_items(menu_item)
    @drink_count += 1
    @order_list << menu_item
  end

  def drink_count
    @drink_count
  end
end