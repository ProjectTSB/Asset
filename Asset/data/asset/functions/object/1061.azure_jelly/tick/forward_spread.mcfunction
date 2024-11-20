#> asset:object/1061.azure_jelly/tick/forward_spread
#
# 前方拡散して向きを決める
#
# @within function asset:object/1061.azure_jelly/tick/

#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 0.8
    data modify storage lib: Argument.Spread set value 0.4
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 向きを合わせる
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet run tp @s ~ ~ ~ ~ ~
    
# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
