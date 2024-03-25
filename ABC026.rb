# 高橋君は、丸が大好きです。今日も、原点を中心とした大きさの違う円を N 個書きました。

# その円の集合に対し、外側から赤白交互に色を塗ったとき、赤く塗られる部分の面積を出力しなさい。

n = gets.to_i
r = []
n.times do
  r << gets.to_i
end

r = r.sort.reverse
red = 0

r.each_with_index do |r,i|
  if i.odd?
    red -= r**2
  else
    red += r**2
  end
end

puts red*Math::PI
