# 英小文字からなる 
# 12 個の文字列 S 1​ , S 2​ , ..., S 12
# ​が入力されます。
# これらの文字列のうち、文字 r が含まれるものの個数を数えてください。

s = []
12.times do
  s << gets.chomp
end

count = 0
(0...s.length).each do |i|
  if s[i].include?("r")
    count += 1
  end
end

puts count
