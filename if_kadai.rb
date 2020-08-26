plans = [
    {travel: :沖縄旅行, price: 10000},
    {travel: :北海道旅行, price: 20000},
    {travel: :九州旅行, price: 15000}
]


puts "旅行プランを選択してください"
plans.each.with_index(1) do |plan,i|
    puts "#{i}. #{plan[:travel]}(¥#{plan[:price]})"
end

choice = gets.to_i
select_plan = plans[choice-1]

puts "#{select_plan[:travel]}ですね、何人で行きますか？"

num = gets.to_i
total_price = select_plan[:price] * num

if num <= 4
    puts "合計金額：¥#{total_price} "
else
    puts "5人以上なので10%割引となります。"
    puts "合計金額：¥#{total_price * 0.9} "
end

