#> asset:mob/0365.frestchika/tick/base_move/teleport/return_to_center
#
# センター付近にワープ
#
# @within function asset:mob/0365.frestchika/tick/base_move/stuck_revenge/explosion

#> SpreadLib
# @private
#declare tag SpreadMarker

# 演出
    execute at @s run function asset:mob/0365.frestchika/tick/base_move/teleport/vfx

# 自分の位置にマーカーを召喚
    summon marker ~ ~1.2 ~ {Tags:["A5.Marker","A5.Marker.Teleport"]}

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,5.0d],[16d,16d]]
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @e[type=marker,tag=A5.Marker.SpawnPoint,sort=nearest,limit=1] run function lib:spread_entity/

# テレポートを確定
    execute at @e[type=marker,tag=SpreadMarker,limit=1] run tp @s ~ ~ ~

# これの呼び出し元にて召喚したマーカーに向けて、見た目レーザーが伸びる
    execute at @s positioned ~ ~1.2 ~ facing entity @e[type=marker,tag=A5.Marker.Teleport,distance=..64,sort=nearest,limit=1] feet run function asset:mob/0365.frestchika/tick/base_move/teleport/laser/summon

# 演出
    execute at @s run function asset:mob/0365.frestchika/tick/base_move/teleport/vfx

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]
