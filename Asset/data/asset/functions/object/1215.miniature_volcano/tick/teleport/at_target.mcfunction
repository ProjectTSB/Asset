#> asset:object/1215.miniature_volcano/tick/teleport/at_target
#
#
#
# @within function asset:object/1215.miniature_volcano/tick/teleport/

#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 1.4
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle

# tp
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10] feet positioned ^ ^ ^15 facing ^ ^ ^-1 run tp @s ^ ^ ^ ~ ~

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
