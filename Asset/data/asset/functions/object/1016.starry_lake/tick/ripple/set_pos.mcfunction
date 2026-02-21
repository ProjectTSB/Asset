#> asset:object/1016.starry_lake/tick/ripple/set_pos
#
#
#
# @within function asset:object/1016.starry_lake/tick/

#> Private
# @private
    #declare tag RippleTarget
    #declare tag SpreadMarker

# エリア内の平面上にに敵がいた場合、その位置で召喚するという処理
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..7.5] positioned ~-7.5 ~-1 ~-7.5 if entity @s[dx=14,dy=4,dz=14] run tag @s add RippleTarget

# 切り取ってもRippleTargetがいた場合、その敵の近くで拡散するようにする
    execute at @e[type=#lib:living,tag=RippleTarget,distance=..7.5,sort=random,limit=1] run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    execute at @e[type=#lib:living,tag=RippleTarget,distance=..7.5,limit=1] run data modify storage lib: Argument.Bounds set value [[1.5d,1.5d],[0d,0d],[1.5d,1.5d]]

# RippleTargetがいなかった場合、中央に召喚し、拡散するようにする
    execute unless entity @e[type=#lib:living,tag=RippleTarget,distance=..7.5] run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    execute unless entity @e[type=#lib:living,tag=RippleTarget,distance=..7.5] run data modify storage lib: Argument.Bounds set value [[5.3d,5.3d],[0d,0d],[5.3d,5.3d]]

# 拡散する
    execute as @e[type=marker,tag=SpreadMarker,distance=..7.5,limit=1] at @s run function lib:spread_entity/

# SpreadMarkerの位置に召喚する
    execute at @e[type=marker,tag=SpreadMarker,distance=..10,sort=nearest,limit=1] positioned ~ ~3 ~ run function asset:object/1016.starry_lake/tick/ripple/summon

# リセット
    data remove storage lib: Argument
    tag @e[type=#lib:living,tag=RippleTarget,distance=..10] remove RippleTarget
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
