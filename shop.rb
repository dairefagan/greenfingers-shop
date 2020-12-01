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
    @products_stock.each { |product| net += product.net_price_all_items }
    net
  end

  def average_gross_price
    sum = 0.0
    @products_stock.each { |product| sum += product.gross_price }
    (sum / @products_stock.count).round(2)
  end

  def to_s
    @products_stock.sort_by! { |product| product.name }
    str = ""
    @products_stock.each { |product| str += "#{product.name} €" + sprintf("%.2f", product.gross_price) + " \n" }
    str
  end
end
