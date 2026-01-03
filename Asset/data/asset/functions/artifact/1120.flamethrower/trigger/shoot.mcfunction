#> asset:artifact/1120.flamethrower/trigger/shoot
#
#
#
# @within function asset:artifact/1120.flamethrower/trigger/3.main

#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散して召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1
    data modify storage lib: Argument.Spread set value 0.3
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,sort=nearest,limit=1] rotated as @p[tag=this] run function lib:forward_spreader/circle

# 召喚
    data modify storage api: Argument.ID set value 1053
    data modify storage api: Argument.FieldOverride.Damage set value 112f
    data modify storage api: Argument.FieldOverride.Tick set value 40f
    data modify storage api: Argument.FieldOverride.Motion set value 1f
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute facing entity @e[type=marker,tag=SpreadMarker,sort=nearest,limit=1] eyes run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
