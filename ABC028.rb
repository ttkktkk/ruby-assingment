# 文字列 S が与えられます。

# この文字列は A, B, C, D, E, F の 6 種類の文字から構成されている事が分かっています。

# 6 種類の文字それぞれについて、S のなかに何回出てくるかを数えてください。

puts("#{gets.chomp}ABCDEF".chars.tally.sort_by { |k, _v| k }.map { |_k, v| v - 1 }.join(' '))
