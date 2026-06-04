#> asset:object/1166.ice_brand_arts_tonfa/tick/
#
#
#
# @within function asset:object/1166.ice_brand_arts_tonfa/tick/


    execute on target run data modify storage api: Argument.ID set value 1460
    execute on target run function api:artifact/give/from_id 
    execute on target at @s run playsound item.trident.hit master @a ~ ~ ~ 1 1.5
    execute on vehicle run kill @s
