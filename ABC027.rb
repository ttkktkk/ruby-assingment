# N 個の島が横一列に並んでいる。 1≦i≦N−1 について、左から i 番目の島と i+1 番目の島は隣り合っている。

# はじめ、左から i (1≦i≦N) 番目の島には a i人の住人が住んでいる。 高橋君はすべての島に同じ人数の住人が住むようにしたいと考えている。

# 高橋君は隣り合う 2 つの島の間に橋を架けることができる。 また、直接的または間接的に橋で結ばれた複数の島の間で、住人を自由に移動させることができる。

# すべての島に同じ人数の住人が住むようにするために、架ける必要のある橋の本数の最小値を求めよ。

n = gets.to_i
a = gets.split.map(&:to_i)
total = a.sum
unless (total % n).zero?
  puts(-1)
  return
end

ans = 0
sum = 0
a.each_index do |i|
  sum += a[i]
  ans += 1 if sum != (i + 1) * (total / n)
end

puts ans
