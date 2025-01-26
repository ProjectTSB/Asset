#> asset:artifact/1141.bell_of_courage/damage_entity/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1141/damage_entity/


# 演出
    execute rotated ~ 0 positioned ^0.3 ^0.8 ^0.3 run function asset:artifact/1141.bell_of_courage/damage_entity/vfx
    playsound ogg:ambient.nether.crimson_forest.shine1 player @a ~ ~ ~ 1 1.2

# スケジュール用Tagを付与
    tag @s add VP.Schedule

# スケジュール実行
    schedule function asset:artifact/1141.bell_of_courage/damage_entity/schedule 1t replace

# バリア用エフェクトを付与
    data modify storage api: Argument.ID set value 273
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
