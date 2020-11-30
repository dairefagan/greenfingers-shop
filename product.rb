class Product

  attr_reader :name, :net_price, :count

  def initialize(name, net_price, count)
    @name, @net_price, @count = name, net_price.round(2), count
  end

  def gross_price
    (@net_price * 1.10).round(2)
  end

end
