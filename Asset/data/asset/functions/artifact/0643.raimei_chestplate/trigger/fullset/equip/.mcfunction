#> asset:artifact/0643.raimei_chestplate/trigger/fullset/equip/
#
# セット効果
#
# @within function
#   asset:artifact/0642.raimei_helmet/trigger/3.main
#   asset:artifact/0643.raimei_chestplate/trigger/3.main
#   asset:artifact/0644.raimei_leggings/trigger/3.main
#   asset:artifact/0645.raimei_boots/trigger/3.main

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 300
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 300
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100

    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.impact player @a ~ ~ ~ 1 0
    playsound block.end_portal.spawn player @a ~ ~ ~ 1 1

# タグを付与する
    tag @s add HV.Full

# 雷耐性
    data modify storage api: Argument.UUID set value [I;1,1,643,0]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/thunder/add

# フルセット用バフ
    data modify storage api: Argument.ID set value 238
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
