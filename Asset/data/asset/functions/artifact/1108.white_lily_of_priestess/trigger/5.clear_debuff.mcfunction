#> asset:artifact/1108.white_lily_of_priestess/trigger/5.clear_debuff
#
# デバフを2つ解除する
#
# @within function asset:artifact/1108.white_lily_of_priestess/trigger/3.main

# 演出
    particle end_rod ~ ~1.2 ~ 0.5 0.4 0.5 0 40 normal @a
    execute if entity @s[tag=!this] run playsound ogg:ambient.nether.crimson_forest.shine3 player @a ~ ~ ~ 0.2 1.7
    execute if entity @s[tag=!this] run playsound ogg:ambient.nether.crimson_forest.shine3 player @a ~ ~ ~ 0.2 1.5

# TODO : APIで任意の個数消せるようになったら処理を変える

# デバフを1つ解除
    data modify storage api: Argument.ClearLv set value 2
    data modify storage api: Argument.ClearType set value "bad"
    data modify storage api: Argument.IsSingle set value true
    function api:entity/mob/effect/remove/from_level

# デバフを1つ解除
    data modify storage api: Argument.ClearLv set value 2
    data modify storage api: Argument.ClearType set value "bad"
    data modify storage api: Argument.IsSingle set value true
    function api:entity/mob/effect/remove/from_level
