# セキュリティ意識の高い高橋君はこの度、自分の家に新しい錠をつけることにしました。
# この錠はダイヤルロック式で、1 桁の数字が表示されるディスプレイと、赤色と青色の 2 種類のボタンがついています。赤いボタンを押すとディスプレイに表示されている数が 1 増え、青いボタンを押すと 1 減ります。
# ただし、ディスプレイの表示が 9 のときに赤いボタンを押すと 0 になり、ディスプレイの表示が 0 のときに青いボタンを押すと 9 になります。
# いま、ディスプレイに表示されている数字は a で、この数字が b になった瞬間に錠が開きます。さて、錠を開けるためには最低何回はボタンを押す必要があるでしょうか？

puts((1..2).map { gets.to_i }.sort.then { |a, b| [b - a, 10 - b + a].min })
