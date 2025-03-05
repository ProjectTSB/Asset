#> asset:effect/0191.night_vision/clear/
#
# 暗視解除処理
#
# @within function
#   asset:effect/0191.night_vision/end/
#   asset:effect/0191.night_vision/remove/

# スコアを1減らす
    scoreboard players remove @s 191.Count 1

# スコアが0なら暗視を解除
    execute if score @s 191.Count matches 0 run effect clear @s night_vision

# スコアが0ならリセット
    execute if score @s 191.Count matches 0 run scoreboard players reset @s 191.Count
