#> asset:mob/0026.vein/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0026.vein/attack/1.trigger

# 演出
    playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1.7 0
    execute at @p[tag=Victim] run particle dust 0.149 0.682 0.741 1 ~ ~ ~ 0.6 0.6 0.6 0 20 normal @a

# 鎮静(ID:607)を付与
# Stack = 難易度値
    function api:global_vars/get_difficulty
    data modify storage api: Argument.ID set value 607
    data modify storage api: Argument.Stack set from storage api: Return.Difficulty
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
