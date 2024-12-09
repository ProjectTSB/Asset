#> asset:mob/0123.lexiel_v3/tick/common/thunder/spread
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/common/thunder/main

#> private
# @private
    #declare tag SpreadMarker

# 拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0d],[16d,16d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..50,limit=1] at @p[gamemode=!spectator,distance=..100] run function lib:spread_entity/

# 召喚
    execute at @e[type=marker,tag=SpreadMarker,distance=..50,limit=1] run function asset:mob/0123.lexiel_v3/tick/common/thunder/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..50]
