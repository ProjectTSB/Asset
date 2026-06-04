#> asset:object/1165.ice_brand_arts_spear/tick/
#
#
#
# @within function asset:object/1165.ice_brand_arts_spear/tick/


    execute on target run data modify storage api: Argument.ID set value 1462
    execute on target run function api:artifact/give/from_id 
    execute on target at @s run playsound item.trident.hit master @a ~ ~ ~ 1 1.5
    execute on vehicle run kill @s
