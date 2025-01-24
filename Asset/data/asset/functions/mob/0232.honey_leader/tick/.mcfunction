#> asset:mob/0232.honey_leader/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/232/tick

# 発光を自身に付与
    effect give @s glowing infinite 0 true

# スキルスコア
    scoreboard players add @s General.Mob.Tick 1

# スキルを選択
    execute if entity @s[scores={General.Mob.Tick=0}] positioned ^ ^ ^16 if entity @p[gamemode=!spectator,distance=..16] if predicate lib:random_pass_per/70 run tag @s add 6G.Beam

# 周囲にバフ&回復
    execute if entity @s[tag=!6G.Beam,scores={General.Mob.Tick=0..}] run function asset:mob/0232.honey_leader/tick/skill/buff_and_heal

# ビーム
    execute if entity @s[tag=6G.Beam,scores={General.Mob.Tick=0..}] run function asset:mob/0232.honey_leader/tick/skill/beam/
