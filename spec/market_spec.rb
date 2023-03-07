require './lib/item'
require './lib/vendor'
require './lib/market'

RSpec.describe Market do
  before(:each) do
    @market = Market.new("South Pearl Street Farmers Market")
  end

  describe "#initialize" do
    it 'creates a market and has attributes' do
      expect(@market.market_name).to eq("South Pearl Street Farmers Market")
      expect(@market.vendors).to eq([])
    end
  end



end






# There are **5** features in Iteration 2:
# 1. Market Creation - including all attr_readers
# 2. Market #add_vendor
# 3. Market #vendor_names
# 4. Market #vendors_that_sell
# 5. Vendor #potential_revenue





# pry(main)> market.name
# #=> "South Pearl Street Farmers Market"

# pry(main)> market.vendors
# #=> []

# pry(main)> vendor1 = Vendor.new("Rocky Mountain Fresh")
# #=> #<Vendor:0x00007fe1348a1160...>

# pry(main)> item1 = Item.new({name: 'Peach', price: "$0.75"})
# #=> #<Item:0x007f9c56740d48...>

# pry(main)> item2 = Item.new({name: 'Tomato', price: "$0.50"})
# #=> #<Item:0x007f9c565c0ce8...>

# pry(main)> item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
# #=> #<Item:0x007f9c562a5f18...>

# pry(main)> item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
# #=> #<Item:0x007f9c56343038...>

# pry(main)> vendor1.stock(item1, 35)    

# pry(main)> vendor1.stock(item2, 7)    

# pry(main)> vendor2 = Vendor.new("Ba-Nom-a-Nom")    
# #=> #<Vendor:0x00007fe1349bed40...>

# pry(main)> vendor2.stock(item4, 50)    

# pry(main)> vendor2.stock(item3, 25)

# pry(main)> vendor3 = Vendor.new("Palisade Peach Shack")    
# #=> #<Vendor:0x00007fe134910650...>

# pry(main)> vendor3.stock(item1, 65)  

# pry(main)> market.add_vendor(vendor1)    

# pry(main)> market.add_vendor(vendor2)    

# pry(main)> market.add_vendor(vendor3)

# pry(main)> market.vendors
# #=> [#<Vendor:0x00007fe1348a1160...>, #<Vendor:0x00007fe1349bed40...>, #<Vendor:0x00007fe134910650...>]

# pry(main)> market.vendor_names
# #=> ["Rocky Mountain Fresh", "Ba-Nom-a-Nom", "Palisade Peach Shack"]

# pry(main)> market.vendors_that_sell(item1)
# #=> [#<Vendor:0x00007fe1348a1160...>, #<Vendor:0x00007fe134910650...>]

# pry(main)> market.vendors_that_sell(item4)
# #=> [#<Vendor:0x00007fe1349bed40...>]

# pry(main)> vendor1.potential_revenue
# #=> 29.75

# pry(main)> vendor2.potential_revenue
# #=> 345.00

# pry(main)> vendor3.potential_revenue
# #=> 48.75  