#> asset:mob/1004.tultaria/tick/move/teleport/recursive_tp
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/move/teleport/move_to_marker
#   asset:mob/1004.tultaria/tick/move/teleport/recursive_tp


# パーティクル
    execute positioned ~ ~-0.2 ~ if predicate lib:random_pass_per/30 rotated ~ 0 run particle minecraft:end_rod ^ ^ ^-0.2 0.02 0.02 0.02 0 1

# スコア減算
    scoreboard players remove @s RW.MoveTimesPerTick 1

# 前進
    execute if entity @s[scores={RW.MoveTimesPerTick=0}] run tp @s ~ ~ ~ ~ ~

# 再帰
    execute if entity @s[scores={RW.MoveTimesPerTick=1..}] positioned ^ ^ ^0.2 run function asset:mob/1004.tultaria/tick/move/teleport/recursive_tp
