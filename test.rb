products = [
    {name:"トマト",price:"100"},
    {name:"きゅうり",price:"200"},
    {name:"にんじん",price:"300"},
    {name:"玉ねぎ",price:"400"}
]

puts "いらっしゃいませ！商品を選んで下さい。"

products.each.with_index(1) do |product,i|
    puts "#{i}.#{product[:name]}（#{product[:price]}円）"
  end

  print "商品の番号を選択 > "
   select_product_num = gets.to_i

   chosen_product = products[select_product_num - 1]
  
   puts chosen_product[:name]+ "ですね。何個買いますか?"
   print "商品の番号を選択 >"
   number = gets.to_i
   puts number