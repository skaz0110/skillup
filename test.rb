products = [
    {name:"トマト",price:100},
    {name:"きゅうり",price:200},
    {name:"にんじん",price:300},
    {name:"玉ねぎ",price:400}
]

puts "いらっしゃいませ！商品を選んで下さい。"

products.each.with_index(1) do |product,i|
    puts "#{i}.#{product[:name]}（#{product[:price]}円）"
  end
  
  while true
    print "商品の番号を選択 > "
    select_product_num = gets.to_i
    break if (1..4).include?(select_product_num)
    puts "1〜4の番号を入力して下さい。"
  end

   chosen_product = products[select_product_num - 1]
  
   puts chosen_product[:name]+ "ですね。何個買いますか?"
   print "商品の番号を選択 >"
   quantity_of_product = gets.to_i
  
   total_price = chosen_product[:price] * quantity_of_product
   waribiki =(total_price * 0.9).floor

   if quantity_of_product >= 5
    puts "5個以上なので10％割引となります！"
    puts "合計金額は#{waribiki}円です。"
   else 
    puts "合計金額は#{total_price}円です。"
   end
    puts "お買い上げありがとうございました！"