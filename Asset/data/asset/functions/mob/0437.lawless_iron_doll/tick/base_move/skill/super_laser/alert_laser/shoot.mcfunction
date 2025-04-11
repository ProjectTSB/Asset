#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/alert_laser/shoot
#
# 警告レーザー。冷静に考えるとシステムチックすぎる代物。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/tick

# 付近の対象となるヤツすべての位置にマーカーを召喚する
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..32] run summon marker ~ ~1 ~ {Tags:["C5.Marker","C5.Marker.Target"]}

# 付近の対象となるヤツすべてに向けて、見た目レーザーと判定レーザーを召喚
    execute positioned ~ ~2 ~ facing entity @e[type=marker,tag=C5.Marker.Target,distance=..256] eyes run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/alert_laser/recursive
    execute positioned ~ ~2 ~ facing entity @e[type=marker,tag=C5.Marker.Target,distance=..256] eyes run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/alert_laser/visual_laser

# マーカーキル
    kill @e[type=marker,tag=C5.Marker.Target,distance=..256]
