#> asset:artifact/0108.vacuum_hopper/trigger/particle
#
#
#
# @within function asset:artifact/0108.vacuum_hopper/trigger/3.main

#> Private
# @private
    #declare tag SpreadMarker

# 拡散して前方から出す
    execute anchored eyes positioned ^ ^-0.4 ^ run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 2.8
    execute as @e[type=marker,tag=SpreadMarker,distance=..5,limit=1] run function lib:forward_spreader/circle
    execute anchored eyes positioned ^ ^-0.4 ^ facing entity @e[type=marker,tag=SpreadMarker,distance=..5,sort=nearest,limit=1] feet positioned ^ ^ ^30 run particle cloud ~ ~ ~ ^ ^ ^-100000000 0.00000002 0 force @a[distance=..40]
    kill @e[type=marker,tag=SpreadMarker,distance=..5]
