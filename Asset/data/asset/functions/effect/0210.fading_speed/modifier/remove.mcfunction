#> asset:effect/0210.fading_speed/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0210.fading_speed/end/
#   asset:effect/0210.fading_speed/re-given/
#   asset:effect/0210.fading_speed/remove/

# 移動速度バフを削除
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000

# ついでにスコアもリセット
    scoreboard players reset @s 5U.Tick 
