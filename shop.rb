class Shop
  attr_reader :name

  def initialize(name)
    @name = name
    @products_stock = []
  end

  def add_product(product)
    @products_stock.push(product)
  end

  def total_net
    net = 0
    @products_stock.each { |product| net += product.net_price * product.count }
    net
  end

  def to_s
    @products_stock.sort_by! { |product| product.name }
    str = ""
    @products_stock.each { |product| str += "#{product.name} €" + sprintf("%.2f", product.gross_price) + " \n" }
    str
  end
end
