#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/shoot
#
# こちらはメインのレーザー。超正確無比な狙いなので壁に隠れないと避けれない。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/tick

# 付近の対象となるヤツすべての位置にマーカーを召喚する
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..32] run summon marker ~ ~1 ~ {Tags:["C5.Marker","C5.Marker.Target"]}

# 付近の対象となるヤツすべてに向けて、見た目レーザーと判定レーザーを召喚
    execute facing entity @e[type=marker,tag=C5.Marker.Target,distance=..256] eyes run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/recursive
    execute facing entity @e[type=marker,tag=C5.Marker.Target,distance=..256] eyes run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/visual_laser

# マーカーキル
    kill @e[type=marker,tag=C5.Marker.Target,distance=..256]
