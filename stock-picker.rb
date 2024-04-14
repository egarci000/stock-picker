def stock_picker(arr_of_prices)
  new_hash = {}
  for i in arr_of_prices
    arr_of_prices.each do |val|
      if arr_of_prices.index(i) < arr_of_prices.index(val)
        new_hash[val - i] = [arr_of_prices.index(i), arr_of_prices.index(val)]
      end
    end
  end
  arr_of_sorted_keys = new_hash.keys.sort 
  return new_hash[arr_of_sorted_keys[-1]]
end

arr = [17,3,6,9,15,8,6,1,10]

p stock_picker(arr)