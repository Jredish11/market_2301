class Vendor
    
    attr_reader :vendor_name, :inventory, :stock_count
  def initialize(vendor_name)
    @vendor_name = vendor_name
    @inventory = {}
    @stock_count = 0
  end

  def check_stock(item)
    if @inventory.include?(item)
      @stock_count += @inventory[item]
      @inventory[item]
    else
      0
    end 
  end

  def stock(item, count)
    inventory[item] = count
    inventory 
  end

 
  
end
