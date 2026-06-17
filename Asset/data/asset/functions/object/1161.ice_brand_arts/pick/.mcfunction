#> asset:object/1161.ice_brand_arts/tick/
#
#
#
# @within function asset:object/1161.ice_brand_arts/tick/


    execute if entity @s[tag=Weapon_0] on target run data modify storage api: Argument.ID set value 1457
    execute if entity @s[tag=Weapon_1] on target run data modify storage api: Argument.ID set value 1458
    execute if entity @s[tag=Weapon_2] on target run data modify storage api: Argument.ID set value 1459
    execute if entity @s[tag=Weapon_3] on target run data modify storage api: Argument.ID set value 1460
    execute if entity @s[tag=Weapon_4] on target run data modify storage api: Argument.ID set value 1461
    execute if entity @s[tag=Weapon_5] on target run data modify storage api: Argument.ID set value 1462
    execute on target run function api:artifact/give/from_id
    execute on target at @s run playsound item.trident.hit player @a ~ ~ ~ 1 1.5
    execute on vehicle run kill @s
