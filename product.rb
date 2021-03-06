class Product

  attr_reader :name, :net_price, :count

  def initialize(name, net_price, count)
    @name, @net_price, @count = name, net_price, count
  end

  def gross_price
    (@net_price * 1.1)
  end

  def net_price_all_items
    @net_price * @count
  end

end
