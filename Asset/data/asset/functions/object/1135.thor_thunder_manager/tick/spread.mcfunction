#> asset:object/1135.thor_thunder_manager/tick/spread
#
#
#
# @within function asset:object/1135.thor_thunder_manager/tick/

#> Private
# @private
    #declare tag SpreadMarker

# 設置位置となるMarkerを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[3d,3d],[0d,0d],[3d,3d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] at @s run function lib:spread_entity/

# 召喚
    execute positioned as @e[type=marker,tag=SpreadMarker,distance=..16,limit=1] run function asset:object/1135.thor_thunder_manager/tick/summon_thunder

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..16]
