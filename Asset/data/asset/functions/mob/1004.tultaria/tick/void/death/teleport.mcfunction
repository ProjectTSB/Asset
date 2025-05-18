#> asset:mob/1004.tultaria/tick/void/death/teleport
#
# 墓をアリーナの上に置く
#
# @within function asset:mob/1004.tultaria/tick/void/death/

#> Private
# @private
    #declare tag SpreadMarker

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0d],[16d,16d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..128,limit=1] run function lib:spread_entity/

# 自身をテレポートさせる
    execute at @e[type=marker,tag=SpreadMarker,distance=..128,limit=1] run tp @s ~ ~ ~

# マーカーキル
    kill @e[type=marker,tag=SpreadMarker,limit=1]
