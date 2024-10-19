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
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] run function lib:forward_spreader/circle

# Markerに自分の方を向かせた上で反対を向かせる
# これにより本体の向きを一切変えずに本体からMarkerへの方向がMarkerのRotationに入る
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] at @s facing entity @p[tag=this] eyes facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~

# 召喚
    data modify storage api: Argument.ID set value 1049
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] at @s run data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ^ ^ ^1 run function api:object/summon

# 前方拡散Markerをkill
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
