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

case choice
when 1
    puts "#{plans[0][:travel]}ですね、何人で行きますか？"
when 2
    puts "#{plans[1][:travel]}ですね、何人で行きますか？"
when 3
    puts "#{plans[2][:travel]}ですね、何人で行きますか？"
end

num = gets.to_i


if choice == 1 && num <= 5
    total_price = plans[0][:price] * num
    puts "合計料金：#{total_price}"
elsif choice == 2 && num <= 5
    total_price = plans[1][:price] * num
    puts "合計料金：#{total_price}"
elsif choice == 3 && num <= 5
    total_price = plans[2][:price] * num
    puts "合計料金：#{total_price}"
elsif num >= 5
    total_price = plans[price] * num * 0.9
    puts "５人以上なので１０％割引となります"
    puts "合計金額：¥#{total_price}"
else
    puts "正しい値を入力してください。"
    
end