#> asset:mob/0437.lawless_iron_doll/tick/base_move/teleport/return_to_center
#
# センター付近にワープ
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/stuck_revenge/explosion

#> SpreadLib
# @private
#declare tag SpreadMarker

# 演出
    execute at @s run function asset:mob/0437.lawless_iron_doll/tick/base_move/teleport/vfx

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,5.0d],[16d,16d]]
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @e[type=marker,tag=C5.Marker.SpawnPoint,sort=nearest,limit=1] run function lib:spread_entity/

# テレポートを確定
    execute at @e[type=marker,tag=SpreadMarker,limit=1] run tp @s ~ ~ ~

# 演出
    execute at @s run function asset:mob/0437.lawless_iron_doll/tick/base_move/teleport/vfx

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]
