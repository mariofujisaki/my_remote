# menu.rbを呼び出す
require "./menu"

# インスタンスを作成、クラス.newに引数を渡すことでinitializeメソッドにその値を渡すことが出来る
menu1 = Menu.new(name: "ピザ", price: 800)
menu2 = Menu.new(name: "すし", price: 1000)
menu3 = Menu.new(name: "コーラ", price: 300)
menu4 = Menu.new(name: "お茶", price: 200)

# Menuクラスから生成したインスタンスを配列の要素とし、変数menusに代入。
# この配列に対してeach文を用いることで、それぞれのメニューを表示する
menus = [menu1, menu2, menu3, menu4]

index = 0
menus.each do |menu|
  puts "#{index}. #{menu.info}"
  index += 1
end

puts "--------------"
puts "メニューの番号を選択してください"

# 入力を数値として受け取り、変数orderに代入
order = gets.chomp.to_i

# 選択されたメニューのインスタンスを変数selected_menuに代入
# 変数selected_menuを定義し、配列menusのインデックス番号が変数orderの値である要素を代入
selected_menu = menus[order]

# 「選択されたメニュー: ○○」となるように出力
# ◯◯の部分には、変数selected_menuのnameの値が入る
puts "選択されたメニュー: #{selected_menu.name}"

puts "個数を入力してください(3つ以上で100円割引)"

# 入力を数値として受け取り、変数countに代入
count = gets.chomp.to_i

# 「お会計は○○円です」となるように出力
# ◯◯の部分には、get_total_priceメソッドに引数countを渡して呼び出した時の戻り値を入れる
puts "お会計は#{selected_menu.get_total_price(count)}円です"
