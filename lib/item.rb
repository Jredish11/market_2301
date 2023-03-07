class Item

  attr_reader :name, :price 
  def initialize(info)
    @name = info[:name]
    @price = info[:price].gsub("$0", "").to_f
  end
  
end
