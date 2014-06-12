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
    expect(result).to include ({:cocktail=>"White Russian", :price=>7})
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
    expect(result).to include ({:cocktail=>"Black Russian", :price=>7})
  end

  it 'should not accept an item not listed in menu' do
    result = order.add_items("Pizza")
    expect(result).to eq []
  end

  it 'should count the number of valid drinks' do
    order.add_items("White Russian")
    order.add_items("Black Russian")
    order.add_items("Cosmopolitan")
    order.add_items("Black Baby Jesus")
    order.add_items("Pizza")
    order.add_items("Hamburger")
    expect(order.drink_count).to eq 4
  end 

  it 'should automatically include the price when adding' do
    order.add_items("White Russian")
    expect(order.calculate_cost).to eq 7
  end

  it 'sum up the total price when adding items' do
    order.add_items("White Russian")
    order.add_items("Black Russian")
    order.add_items("Cosmopolitan")
    # added afterwards to make sure that if an invalid
    # item is added it still has the right total
    order.add_items("Salad")
    expect(order.calculate_cost).to eq 21
  end

  it 'can create sms message' do
  end

  it 'can send_sms' do
    messages = double :messages, create: nil
    client = double :client, account: messages
    expect(Twilio::REST::Client).to receive(:new).and_return client 
    order.send_sms
  end

end