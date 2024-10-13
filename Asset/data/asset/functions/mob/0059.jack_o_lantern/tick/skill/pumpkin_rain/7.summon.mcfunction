#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/7.summon
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/*

# ID設定
    data modify storage api: Argument.ID set value 2036

# ランダムな方向を向かせて召喚
    execute store result score $Random Temporary run function lib:random/
    execute store result storage api: Argument.FieldOverride.RotationX int 1 run scoreboard players operation $Random Temporary %= $360 Const
    execute positioned ~ ~8 ~ run function api:object/summon

# リセット
    scoreboard players reset $Random Temporary
