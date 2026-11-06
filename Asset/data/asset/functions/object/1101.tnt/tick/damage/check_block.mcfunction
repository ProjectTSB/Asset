#> asset:object/1101.tnt/tick/damage/check_block
#
# 再帰して壁貫通をチェックする
#
# @within function
#   asset:object/1101.tnt/tick/damage/
#   asset:object/1101.tnt/tick/damage/check_block

# 現座標がブロックならreturn
    execute unless block ~ ~ ~ #lib:no_collision/ run return fail

# thisに接触したならTagを付与してreturn
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=marker,tag=this,dx=0] run return run tag @s add 1101.Hit

# 再帰する
    execute if entity @s[distance=..8.1] positioned ^ ^ ^1 run function asset:object/1101.tnt/tick/damage/check_block
