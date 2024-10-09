#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/2.first_tick
#
# 最初のTickにやるべきこと
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/1.main

# NoAIにする
    data modify entity @s NoAI set value 1b

# 攻撃パターン設定
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $3 Const
    execute if score $Random Temporary matches 0 run tag @s add 1N.GiantPumpkin1.Center
    execute if score $Random Temporary matches 1 run tag @s add 1N.GiantPumpkin1.Left
    execute if score $Random Temporary matches 2 run tag @s add 1N.GiantPumpkin1.Right
    scoreboard players reset $Random Temporary
