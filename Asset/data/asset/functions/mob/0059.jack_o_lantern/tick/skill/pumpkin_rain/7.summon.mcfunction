#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/7.summon
#
# 召喚処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/*

# ランダムな方向を向かせる
    execute store result score $Random Temporary run function lib:random/
    execute store result storage api: Argument.FieldOverride.RotationX int 1 run scoreboard players operation $Random Temporary %= $360 Const

# 低確率で他の顔を混ぜる
    execute if predicate lib:random_pass_per/10 store result storage api: Argument.FieldOverride.FaceID int 1 run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/8.random_face

# 召喚
    data modify storage api: Argument.ID set value 2036
    execute positioned ~ ~8 ~ run function api:object/summon

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $Temp Temporary
