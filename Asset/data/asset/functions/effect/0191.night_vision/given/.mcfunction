#> asset:effect/0191.night_vision/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0191.night_vision/_/given

# 継承される前提の処理
# givenされる度にスコアを1増やす
# end/removeされる度に値を1減らす
# end/removeの際に、値が0なら暗視をclearする
# このような実装なのは、暗視バフAが効果時間中なのに暗視バフBが解除され、一瞬暗くなるのを防止するため

# 1増やす
    scoreboard players add @s 191.Count 1
