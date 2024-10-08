#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line_with_space/1
#
# 1つだけ空きがある1列カボチャ転がし
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/3.select_line_with_space


    data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,0.0f]
    execute positioned ^7.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

# 内側の4つのうちランダムな1つを実行しない
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $4 Const

    execute unless score $Random Temporary matches 0 run data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,0.0f]
    execute unless score $Random Temporary matches 0 positioned ^4.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    execute unless score $Random Temporary matches 1 run data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,0.0f]
    execute unless score $Random Temporary matches 1 positioned ^1.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    execute unless score $Random Temporary matches 2 run data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,0.0f]
    execute unless score $Random Temporary matches 2 positioned ^-1.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    execute unless score $Random Temporary matches 3 run data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,0.0f]
    execute unless score $Random Temporary matches 3 positioned ^-4.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    scoreboard players reset $Random Temporary

    data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,0.0f]
    execute positioned ^-7.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
