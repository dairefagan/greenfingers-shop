require "test/unit"
require_relative "../shop"
require_relative "../product"

class ShopTest < Test::Unit::TestCase
  def setup
    @shop_1 = Shop.new("Bob's Books")
    @product_1 = Product.new("Book", 10, 200)
    @product_2 = Product.new("Newspaper", 3, 10)
    @product_3 = Product.new("Magazine", 5, 20)
    @shop_1.add_product(@product_1)
    @shop_1.add_product(@product_2)
    @shop_1.add_product(@product_3)
  end

  def test_initialize
    assert_instance_of(Shop, @shop_1, "Not a Shop object")
  end

  def test_name
    assert_equal("Bob's Books", @shop_1.name, "name not initialised to Bob's Books")
  end

  def test_to_s
    assert_equal("Book €11.00 \nMagazine €5.50 \nNewspaper €3.30 \n", @shop_1.to_s, "to_s output invalid")
  end

  def test_total_net
    assert_equal(2130, @shop_1.total_net, "total_net does not return 2130.00")
  end

  def test_average_gross_price
    assert_equal(6.6, @shop_1.average_gross_price, "average_price does not return 6.30")
  end

end
