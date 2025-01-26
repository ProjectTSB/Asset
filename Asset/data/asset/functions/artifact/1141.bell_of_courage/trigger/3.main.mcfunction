#> asset:artifact/1141.bell_of_courage/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1141.bell_of_courage/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute rotated ~ 0 positioned ^0.3 ^0.8 ^0.3 run function asset:artifact/1141.bell_of_courage/trigger/vfx
    playsound ogg:ambient.nether.crimson_forest.shine1 player @a ~ ~ ~ 1 1.2

# スケジュール用Tagを付与
    tag @s add VP.Schedule

# スケジュール実行
    schedule function asset:artifact/1141.bell_of_courage/trigger/schedule 1t replace

# バリア用エフェクトを付与
    data modify storage api: Argument.ID set value 273
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
