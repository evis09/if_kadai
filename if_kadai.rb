travel0 = "正しい値を入力してください"
travel1 = "沖縄旅行"
travel2 = "北海道旅行"
travel3 = "九州旅行"

price1 = 10000
price2 = 20000
price3 = 15000

puts "旅行プランを選択してください。"
puts "1.#{travel1}(¥#{price1})"
puts "2.#{travel2}(¥#{price2})"
puts "3.#{travel3}(¥#{price3})"

travels = [travel0, travel1, travel2, travel3]

travel_plan_select = gets.to_i
select_plan = travels[travel_plan_select]
puts "#{select_plan}ですね。何人で行きますか？"

num = gets.to_i



if travel_plan_select == 1 && num
    total_price = price1 * num
    puts "金額は：￥#{total_price}です"
elsif travel_plan_select == 2 && num
    total_price = price2 * num
    puts "金額は：￥#{total_price}です"
elsif travel_plan_select == 3 && num
    total_price = price3 * num
    puts "金額は：￥#{total_price}です"
else
    puts "人数は半角英数で入力してください"
end

if num >= 5
    puts "5人以上なので１０％割引になります"
    puts "合計金額は：￥#{total_price * 0.9}です"
end