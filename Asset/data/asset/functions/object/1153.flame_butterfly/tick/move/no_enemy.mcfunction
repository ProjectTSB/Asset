#> asset:object/1153.flame_butterfly/tick/move/no_enemy
#
#
#
# @within function asset:object/1153.flame_butterfly/tick/move/

#> Private
# @private
    #declare tag 1153.TempMarker

# Ownerの位置基準でMarkerを召喚し、そこへ追尾する感じで移動する

# 普段はプレイヤーの近くで飛んでいる
# 壁越しではない敵を検知するとそっちに追尾して飛んでいき、爆発して範囲攻撃

# 召喚
    execute as @p[tag=1153.Owner] at @s rotated ~ 0 anchored eyes positioned ^-1.8 ^ ^1.1 run summon marker ~ ~ ~ {Tags:["1153.TempMarker"]}

# 追尾 近い場合は移動をキャンセル
    execute unless entity @e[type=marker,tag=1153.TempMarker,distance=..0.35,limit=1] facing entity @e[type=marker,tag=1153.TempMarker,distance=..64,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-120 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.3 ~ ~

# マーカーが近い場合は、自身の向きを少しずつOwnerに合わせる
    execute if entity @e[type=marker,tag=1153.TempMarker,distance=..0.35,limit=1] rotated as @p[tag=1153.Owner] positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^10 facing entity @s feet positioned as @s positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^-0.05 rotated as @s positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# リセット
    execute at @p[tag=1153.Owner] run kill @e[type=marker,tag=1153.TempMarker,distance=..5]
