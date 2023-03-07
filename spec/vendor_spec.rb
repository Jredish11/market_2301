require './lib/item'
require './lib/vendor'

RSpec.describe Vendor do
  before(:each) do
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
    @vendor = Vendor.new("Rocky Mountain Fresh")
  end

  describe 'item object' do
    it 'checks names and prices' do
      expect(@item1.name).to eq('Peach')
      expect(@item2.name).to eq('Tomato')
      expect(@item2.price).to eq(0.5)
    end
  end

  describe '#initialize vendor' do
    it 'initializes vendor class and has attributes' do
      expect(@vendor.vendor_name).to eq('Rocky Mountain Fresh')
      expect(@vendor.inventory).to eq({})
    end

    it 'checks if item is in stock, it adds items and counts values' do
      expect(@vendor.check_stock(@item1)).to eq(0)
      
      @vendor.stock(@item1, 30)

      expect(@vendor.inventory).to eq({@item1 => 30})

      expect(@vendor.check_stock(@item1)).to eq(30)

      @vendor.stock(@item1, 25)

      expect(@vendor.check_stock(@item1)).to eq(55)
    end


  end


end










#   There are **4** features in Iteration 1
# 3. Vendor #check_stock
# 4. Vendor #stock









# pry(main)> vendor.stock(item1, 25)

# pry(main)> vendor.check_stock(item1)
# #=> 55

# pry(main)> vendor.stock(item2, 12)

# pry(main)> vendor.inventory
# #=> {#<Item:0x007f9c56740d48...> => 55, #<Item:0x007f9c565c0ce8...> => 12}