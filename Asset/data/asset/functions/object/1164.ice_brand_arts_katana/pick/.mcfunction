#> asset:object/1164.ice_brand_arts_katana/tick/
#
#
#
# @within function asset:object/1164.ice_brand_arts_katana/tick/


    execute on target run data modify storage api: Argument.ID set value 1461
    execute on target run function api:artifact/give/from_id 
    execute on target at @s run playsound item.trident.hit master @a ~ ~ ~ 1 1.5
    execute on vehicle run kill @s
