#> asset:artifact/1556.bubble_spreader/trigger/summon_object
#
#
#
# @within function asset:artifact/1556.bubble_spreader/trigger/3.main

#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.5
    data modify storage lib: Argument.Spread set value 3.0
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle

# 弾を召喚
    data modify storage api: Argument.ID set value 1165
    data modify storage api: Argument.FieldOverride.Damage set value 150f
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] feet run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
