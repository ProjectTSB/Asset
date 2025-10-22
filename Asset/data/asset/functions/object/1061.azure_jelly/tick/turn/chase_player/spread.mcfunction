#> asset:object/1061.azure_jelly/tick/turn/chase_player/spread
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/chase_player/

#> Private
# @private
    #declare tag SpreadMarker

# マーカーを拡散し、そのMarkerにfacingする
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[3d,3d],[0d,0d],[3d,3d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] at @s run function lib:spread_entity/

# SpreadMarkerを見る
    execute at @s facing entity @e[type=marker,tag=SpreadMarker,distance=..100] feet run tp @s ~ ~ ~ ~ ~

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
