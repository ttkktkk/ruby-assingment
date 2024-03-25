# トリボナッチ数列というものがあります。この数列は3つ前までの数字を足したものです。
# この数列の第 n項、 10007 で割った余りを求めてください。

MODNUM = 10007
n=gets.to_i
a=[nil,0,0,1]
(4..n).each do |i|
  a[i] = (a[i-1]+a[i-2]+a[i-3])%MODNUM
end
puts a[n]
exit 0
