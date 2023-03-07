class Market
    attr_reader :market_name, :vendors
  def initialize(market_name)
    @market_name = market_name
    @vendors = []
  end
  
end
