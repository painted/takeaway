require 'order'

describe Order do 

  let(:order) {Order.new}
  let(:menu) {Menu.new}

  it 'should include a White Russian' do
    # 1. what is the method name?
    #order.add_items 
    # 2. what are the arguments (if any?)
    result = order.add_items("White Russian")
    # 3. what is the return value (if any?)
    expect(result).to include "White Russian"
    # 4. what other state should have changed? (and can I check it)
    #expect(order.list.size).to eq 1
    #expect(order.add_items).
  end

  it 'should count the number of drinks' do
    order.add_items("White Russian")
    expect(order.drink_count).to eq 1
  end

  it 'should count the number of drinks' do
    order.add_items("White Russian")
    order.add_items("Black Russian")
    expect(order.drink_count).to eq 2
  end  

  it 'should include a Black Russian' do
    result = order.add_items("Black Russian")
    expect(result).to include "Black Russian"
  end

  it 'should automatically include the price when adding' do
    menu.load_menu_items('White Russian','7')
    order.add_items("White Russian")
    expect(order.calculate_cost(menu)).to eq "7"
  end

end