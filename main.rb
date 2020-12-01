require_relative "product"
require_relative "shop"

green_fingers = Shop.new("Green Fingers")

IO.foreach("shop.txt") do |line|
  data = line.split
  green_fingers.add_product(Product.new(data[0], data[1].to_i, data[2].to_i))
end

puts green_fingers.to_s
puts "Total value in shop: €" + sprintf("%.2f", green_fingers.total_net)
puts "Average product price: €" + sprintf("%.2f", green_fingers.average_gross_price)
