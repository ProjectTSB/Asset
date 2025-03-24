#> asset:object/2085.mine_dispenser/tick/move_to_centre.m
#
# 
#
# @within function asset:object/2085.mine_dispenser/tick/scatter

# 中心位置へ移動
    $execute as @e[type=marker,tag=C4.SummonPoint,distance=..1] positioned $(X) ~-1 $(Z) run tp @s ~ ~ ~ ~ ~
