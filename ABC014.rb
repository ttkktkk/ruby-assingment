# あなたは買い物をしていて，商品リストからいくつかの商品を選んだ．そして今，その商品の価格を合計しようとしている．

# 　ところで，とある集合の任意の部分集合を 2 進数を用いて表す方法が存在し，forループで全ての部分集合(組み合わせ)を列挙する際などに用いることができる．n 個の商品があり， 商品0,商品1,..,商品n−1 があるとする．添字が0から始まることに注意せよ．部分集合を表す 10 進整数を X とし，その 2 進 n 桁表現をb n−1​ b n−2​ ...b 1​ b 0​ とする．b 0​  が最下位ビットで b n−1​  が最上位ビットである．先頭の0 を許す表現であることに注意せよ．そして，この整数 X の 2 進表現を用いて，ある部分集合を以下のように定義する．b 0​ =1 ならば集合は商品0 を含み，b 0​ =0 ならば集合は商品 0 を含まない．b 1​ =1 ならば集合は商品1 を含み，b 1​ =0 ならば集合は商品 1 を含まない．...b n−1​ =1 ならば集合は商品 n−1 を含み，b n−1​ =0 ならば集合は商品 n−1 を含まない．例えば，n=4,X=5 のとき， b=0101 であり，部分集合は {商品0,商品2} である． 簡単にいえば，Xの 2 進表現において，k(0≦k≦n−1) 番目のビットが立っていれば k 番目のアイテムを含むということである．あるビットが立っているかどうかは，多くのプログラミング言語で容易に判定できるので，各自調べられたい．
# 　あなたの仕事は，商品の数，それぞれの商品の価格，そして部分集合を表す 10 進整数 X が与えられるので，部分集合に含まれる商品の価格を合計することである．

#shiftは取り出しメソッドdel みたいなもん
n,x=gets.split.map &:to_i
a=gets.split.map &:to_i
s = 0
while x > 0
  r,y = x&01,a.shift
  s += y if r == 1
  x>>=1
end
puts s
exit 0
