#> asset:artifact/1112.lexiel_rod/trigger/summon
#
#
#
# @within function asset:artifact/1112.lexiel_rod/trigger/3.main

#> private
# @private
    #declare tag SpreadMarker

# 前方拡散
    execute positioned ^ ^ ^1 run summon marker ^ ^ ^ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1.0
    data modify storage lib: Argument.Spread set value 1.2
    execute as @e[type=marker,tag=SpreadMarker,distance=..10] run function lib:forward_spreader/circle

# 召喚
    data modify storage api: Argument.ID set value 1049
    data modify storage api: Argument.FieldOverride.Damage set value 450
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10] feet positioned ^ ^ ^1 run function api:object/summon

# 前方拡散Markerをkill
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
