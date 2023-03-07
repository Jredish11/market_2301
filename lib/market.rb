class Market
    attr_reader :market_name, :vendors
  def initialize(market_name)
    @market_name = market_name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    name = []
    @vendors.map do |vendor|
      vendor.vendor_name
      name << vendor.vendor_name
    end
    name
  end

  def vendors_that_sell(item)
    sellers = []
    vendors.map do |vendor|
      vendor.inventory.each do |inventory|
        if inventory.include?(item)
          sellers << vendor
        end
      end
    end
    sellers
  end

  def potential_revenue 
    total_revenue = 0
    @vendors.each do |vendor|
      vendor.inventory.sort_by do |item, amount|
        total_revenue = item.price * amount 
        require 'pry'; binding.pry
      end
    end
    total_revenue
  end
end