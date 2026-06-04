#> asset:object/1163.ice_brand_arts_sword/tick/
#
#
#
# @within function asset:object/1163.ice_brand_arts_sword/tick/


    execute on target run data modify storage api: Argument.ID set value 1459
    execute on target run function api:artifact/give/from_id 
    execute on target at @s run playsound item.trident.hit master @a ~ ~ ~ 1 1.5
    execute on vehicle run kill @s
