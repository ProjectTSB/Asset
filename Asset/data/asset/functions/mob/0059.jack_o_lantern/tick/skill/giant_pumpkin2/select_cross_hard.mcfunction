#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/select_cross_hard
#
# 交差転がし(交差アリ)の処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/

# 最初に50%のTagを付与し、転がすのを2回繰り返す

# Tag付与
    execute if entity @s[scores={General.Mob.Tick=0}] if predicate lib:random_pass_per/50 run tag @s add 1N.Random
    execute if entity @s[scores={General.Mob.Tick=0}] if predicate lib:random_pass_per/50 run tag @s add 1N.Random2

# 転がす1
    execute if entity @s[tag=!1N.Random,scores={General.Mob.Tick=0}] positioned ^1.5 ^ ^ run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/cross/1
    execute if entity @s[tag=1N.Random,scores={General.Mob.Tick=0}] positioned ^1.5 ^ ^ run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/cross/3
    execute if entity @s[tag=!1N.Random2,scores={General.Mob.Tick=0}] positioned ^ ^ ^1.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/cross/2
    execute if entity @s[tag=1N.Random2,scores={General.Mob.Tick=0}] positioned ^ ^ ^1.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/cross/4

# 転がす2
    execute if entity @s[tag=1N.Random,scores={General.Mob.Tick=25}] positioned ^-1.5 ^ ^ run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/cross/1
    execute if entity @s[tag=!1N.Random,scores={General.Mob.Tick=25}] positioned ^-1.5 ^ ^ run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/cross/3
    execute if entity @s[tag=1N.Random2,scores={General.Mob.Tick=25}] positioned ^ ^ ^-1.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/cross/2
    execute if entity @s[tag=!1N.Random2,scores={General.Mob.Tick=25}] positioned ^ ^ ^-1.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/cross/4

# リセット
    execute if entity @s[scores={General.Mob.Tick=25}] run tag @s remove 1N.Random
    execute if entity @s[scores={General.Mob.Tick=25}] run tag @s remove 1N.Random2
