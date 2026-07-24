#> asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/2.spread_pos
#
#
#
# @within function
#   asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/1.select_target
#   asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/first/m

#> Private
# @private
    #declare tag SpreadMarker

# 拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[1.5d,1.5d],[0d,0d],[1.5d,1.5d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01] run function lib:spread_entity/

# マーカーの位置で召喚
    execute at @e[type=marker,tag=SpreadMarker,distance=..10] run function asset:object/1178.yumeori_falling_arrow_manager/tick/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
