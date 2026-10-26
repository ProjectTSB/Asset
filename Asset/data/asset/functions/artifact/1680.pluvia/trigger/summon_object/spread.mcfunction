#> asset:artifact/1680.pluvia/trigger/summon_object/spread
#
#
#
# @within function asset:artifact/1680.pluvia/trigger/3.main

#> private
# @private
    #declare tag SpreadMarker

# 拡散して召喚する
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
    execute at @s as @e[type=marker,tag=SpreadMarker,distance=..20] run function lib:spread_entity/

# 拡散した箇所で召喚
    execute as @e[type=marker,tag=SpreadMarker,distance=..10] at @s run function asset:artifact/1680.pluvia/trigger/summon_object/random_rotate

# 前方拡散をキル
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
