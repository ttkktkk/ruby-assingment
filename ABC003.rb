# AtCoder社では 1 人で行うトランプを使ったゲームが流行っています。
# AtCoder社特製トランプでは、各カードにアルファベット小文字 1 文字（a～z）、または@の文字が書かれています。
# ゲームは以下の手順で行います。
# カードを同じ枚数ずつ 2 列に並べて文字列を 2 つ作ります。
# @のカードは、それぞれa,t,c,o,d,e,rのどれかのカードと置き換えます。
# 2 つの列が指し示す文字列が同じであれば勝ち、同じでなければ負けです。
# 手順 1. で並べられた 2 つの列が指し示す2つの文字列与えられるので、適切に@を置き換えて、このゲームで勝つことができるかどうかを判定するプログラムを書いてください。

s = gets.chomp.chars
t = gets.chomp.chars
flag = true

(0...s.size).each do |i|
  if s[i] == t[i]
    next
  elsif s[i] == "@" && (t[i] == "a" || t[i] == "t" || t[i] == "c" || t[i] == "o" || t[i] == "d" || t[i] == "e" || t[i] == "r")
    next
  elsif t[i] == "@" && (s[i] == "a" || s[i] == "t" || s[i] == "c" || s[i] == "o" || s[i] == "d" || s[i] == "e" || s[i] == "r")
    next
  else
    flag = false
  end
end

if flag == true
  puts "You can win"
else
  puts "You will lose"
end

# charsは一文字ずつ分割するため
