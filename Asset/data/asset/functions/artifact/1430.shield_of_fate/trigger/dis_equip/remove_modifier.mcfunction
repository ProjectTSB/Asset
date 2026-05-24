#> asset:artifact/1430.shield_of_fate/trigger/dis_equip/remove_modifier
#
# 装備を外した時のメイン効果
#
# @within function asset:artifact/1430.shield_of_fate/trigger/dis_equip/main

# 装備タグを外す
    tag @s remove 13Q.Equipped
# MP消費
    data modify storage api: Argument.Fluctuation set value -120
    data modify storage api: Argument.DisableLog set value true
    function api:mp/fluctuation

# 削除 (IDから)
    data modify storage api: Argument.ID set value 354
    execute as @s run function api:entity/mob/effect/remove/from_id
    data modify storage api: Argument.ID set value 355
    execute as @s run function api:entity/mob/effect/remove/from_id

# sound
    playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 1 0.8
    playsound minecraft:block.copper_trapdoor.open master @a ~ ~ ~ 1.0 0.9 0.0
    playsound minecraft:block.copper_door.open master @a ~ ~ ~ 1.0 0.5 0.0
