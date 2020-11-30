class Product

  attr_reader :name, :net_price, :count

  def initialize(name, net_price, count)
    @name, @net_price, @count = name, net_price, count
  end

  def gross_price
    sprintf("%.2f", @net_price * 1.10)
  end

end
