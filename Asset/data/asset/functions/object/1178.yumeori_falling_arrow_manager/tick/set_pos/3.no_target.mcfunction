#> asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/3.no_target
#
#
#
# @within function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/1.select_target

#> Private
# @private
    #declare tag SpreadMarker

# 拡散
    execute rotated ~ 0 run summon marker ^ ^ ^8 {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..10] at @s run function lib:spread_entity/

# マーカーの位置で出来る限り地面に近づける
    execute at @e[type=marker,tag=SpreadMarker,distance=..20] run function asset:object/1178.yumeori_falling_arrow_manager/tick/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..20]
