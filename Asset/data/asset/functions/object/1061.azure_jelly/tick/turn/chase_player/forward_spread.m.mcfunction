#> asset:object/1061.azure_jelly/tick/turn/chase_player/forward_spread.m
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/chase_player/

#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 4
    $data modify storage lib: Argument.Spread set value $(Speed)
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle

# SpreadMarkerを見る
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10] feet run tp @s ~ ~ ~ ~ ~

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
