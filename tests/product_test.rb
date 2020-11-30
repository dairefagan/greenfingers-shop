require "test/unit"
require_relative "../product"

class ProductTest < Test::Unit::TestCase
  def setup
    @product_1 = Product.new("Seeds", 10, 5)
  end

  def test_initialize
    assert_instance_of(Product, @product_1, "Not a product object")
  end

  def test_name
    assert_equal("Seeds", @product_1.name, "name is not initialised to Seeds")
  end

  def test_net_price
    assert_equal(10, @product_1.net_price, "net_price is not initialised to 10")
  end

  def test_count
    assert_equal(5, @product_1.count, "count is not initialised to 5")
  end

  def test_gross_price
    assert_equal(11.00, @product_1.gross_price, "gross price is not initialised to 11")
  end
end
