# n 時 m 分のアナログ時計があります。短針と長針のなす角度のうち小さい方を度数法で求めてください。

n,m = gets.split.map(&:to_i)

short = (n%12 + m.to_f/60)*30
long = m*6

angle = (short-long).abs

if angle > 180
  angle = 360 - angle
end

puts angle
