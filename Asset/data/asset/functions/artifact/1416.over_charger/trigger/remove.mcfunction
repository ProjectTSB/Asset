#> asset:artifact/1416.over_charger/trigger/remove
#
#
#
# @within function asset:artifact/1416.over_charger/trigger/3.main

# 演出
    playsound block.fire.extinguish player @a ~ ~ ~ 1 1.3
    playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1.8

# バフを付与
    data modify storage api: Argument.ID set value 398
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
