shop_count, time_limit = gets.split(' ').map(&:to_i)

shops = []
1.upto(shop_count) do
  shop = gets.split(' ').map(&:to_i)
  discounts.push(shop)
end

