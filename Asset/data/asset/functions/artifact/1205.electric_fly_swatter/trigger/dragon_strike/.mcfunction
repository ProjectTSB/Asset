#> asset:artifact/1205.electric_fly_swatter/trigger/dragon_strike/
#
# 再帰で叩き落とす
#
# @within function
#   asset:artifact/1205.electric_fly_swatter/trigger/3.main
#   asset:artifact/1205.electric_fly_swatter/trigger/dragon_strike/

# vfx
    particle dust 1 0.8 0.2 2 ~ ~ ~ 0.5 0.5 0.5 0 5 normal @a

# tp
    tp @s ~ ~ ~

# 無限ループ防止スコア
    scoreboard players add $Recursive Temporary 1

# 下がブロックの時の演出
    execute at @s unless block ~ ~-0.5 ~ #lib:no_collision/without_fluid run function asset:artifact/1205.electric_fly_swatter/trigger/dragon_strike/vfx

# 下がブロックでなければ再帰
    execute if score $Recursive Temporary matches ..60 at @s if block ~ ~-0.5 ~ #lib:no_collision/without_fluid positioned ~ ~-0.5 ~ run function asset:artifact/1205.electric_fly_swatter/trigger/dragon_strike/
