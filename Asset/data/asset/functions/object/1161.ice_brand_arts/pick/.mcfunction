#> asset:object/1161.ice_brand_arts/pick/
#
#
#
# @within function asset:object/1161.ice_brand_arts/tick/

    data modify storage api: Argument.ID set from storage asset:context this.Model
    execute on target run function api:artifact/give/from_id
    execute on target at @s run playsound item.trident.hit player @a ~ ~ ~ 1 1.5
    execute on vehicle run kill @s
