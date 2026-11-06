#> asset:object/1152.yearning_rose/init/get_scale/recursive
#
#
#
# @within function
#   asset:object/1152.yearning_rose/init/get_scale/m
#   asset:object/1152.yearning_rose/init/get_scale/recursive

# x方向に0.5ブロックずつ再帰し、entityの大きさを推定する
    execute positioned ~-0.5 ~ ~-0.5 unless entity @s[dx=0] run return fail

# スコア
    scoreboard players add $Recursive Temporary 1

# 念のためスコア一定以上で中断
    execute if score $Recursive Temporary matches 20.. run return fail

# 0.5ブロックずつずらして再帰
    execute positioned ~0.5 ~ ~ run function asset:object/1152.yearning_rose/init/get_scale/recursive
