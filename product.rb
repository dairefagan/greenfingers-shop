class Product

  attr_reader :net_price

  def initialize(name, net_price, count)
    @name, @net_price, @count = name, net_price, count
  end

  def gross_price
    @net_price * 1.10
  end

end
