class Shop

  attr_reader :name

  def initialize(name)
    @name = name
    @products_stock = []
  end

  def add_product(product)
    @products_stock.push (product)
  end

  def to_s
    @products_stock.sort_by! { |product| product.name }
    str = ""
    @products_stock.each { |product| str += "#{product.name} \n" }
    str
  end

end
