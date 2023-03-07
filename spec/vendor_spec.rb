require './lib/item'
require './lib/vendor'

RSpec.describe Vendor do
  before(:each) do
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
  end

  describe '#initialize' do
    it 'adds checks names and prices' do
      expect(@item1.name).to eq('Peach')
      expect(@item2.name).to eq('Tomato')
      expect(@item2.price).to eq(0.5)
    end
  end


end










#   There are **4** features in Iteration 1:
# 1. Item Creation - including all attr_readers
# 2. Vendor Creation - including all attr_readers
# 3. Vendor #check_stock
# 4. Vendor #stock




# pry(main)> item2.name
# #=> "Tomato"

# pry(main)> item2.price
# #=> 0.5

# pry(main)> vendor = Vendor.new("Rocky Mountain Fresh")
# #=> #<Vendor:0x00007f85683152f0...>

# pry(main)> vendor.name
# #=> "Rocky Mountain Fresh"

# pry(main)> vendor.inventory
# #=> {}

# pry(main)> vendor.check_stock(item1)
# #=> 0

# pry(main)> vendor.stock(item1, 30)

# pry(main)> vendor.inventory
# #=> {#<Item:0x007f9c56740d48...> => 30}

# pry(main)> vendor.check_stock(item1)
# #=> 30

# pry(main)> vendor.stock(item1, 25)

# pry(main)> vendor.check_stock(item1)
# #=> 55

# pry(main)> vendor.stock(item2, 12)

# pry(main)> vendor.inventory
# #=> {#<Item:0x007f9c56740d48...> => 55, #<Item:0x007f9c565c0ce8...> => 12}