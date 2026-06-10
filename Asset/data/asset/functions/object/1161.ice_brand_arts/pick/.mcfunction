#> asset:object/1161.ice_brand_arts/tick/
#
#
#
# @within function asset:object/1161.ice_brand_arts/tick/


    execute if score @s 1161.Kind matches 0 on target run data modify storage api: Argument.ID set value 1457
    execute if score @s 1161.Kind matches 1 on target run data modify storage api: Argument.ID set value 1458
    execute if score @s 1161.Kind matches 2 on target run data modify storage api: Argument.ID set value 1459
    execute if score @s 1161.Kind matches 3 on target run data modify storage api: Argument.ID set value 1460
    execute if score @s 1161.Kind matches 4 on target run data modify storage api: Argument.ID set value 1461
    execute if score @s 1161.Kind matches 5 on target run data modify storage api: Argument.ID set value 1462
    execute on target run function api:artifact/give/from_id 
    execute on target at @s run playsound item.trident.hit player @a ~ ~ ~ 1 1.5
    execute on vehicle run kill @s
