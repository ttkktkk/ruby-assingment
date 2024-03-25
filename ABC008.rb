# とある組織で、リーダーを選ぶ選挙が行われた。
# 組織は N 人の構成員で構成されており、各人は最もリーダーにふさわしい人物の名前を書いた。
# リーダーは、得票数が最も多い人物が選ばれることになっている。
# 得票数が最も多い人物の名前を出力せよ。得票数が最も多い人物が複数いる場合は、そのうちどの名前を出力してもよい。

n = gets.to_i
s = n.times.map{gets.chomp}
name = 0
count = 0
(0...n).each do |i|
  if s[i].count >= count
    count = s[i].count
    name = s[i]
  end
end

puts name
