#> asset:object/1153.flame_butterfly/tick/move
#
#
#
# @within function asset:object/1153.flame_butterfly/tick/

#> Private
# @private
    #declare tag 1153.TempMarker

# Ownerの位置基準でMarkerを召喚し、そこへ追尾する感じで移動する

# 召喚
    execute as @p[tag=1153.Owner] at @s rotated ~ 0 anchored eyes positioned ^-1.8 ^ ^1.1 run summon marker ~ ~ ~ {Tags:["1153.TempMarker"]}

# 追尾 近い場合は移動をキャンセル
    execute unless entity @e[type=marker,tag=1153.TempMarker,distance=..0.35,limit=1] facing entity @e[type=marker,tag=1153.TempMarker,distance=..64,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-120 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.15 ~ ~

# マーカーが近い場合は、自身の向きをOwnerに合わせる
    execute if entity @e[type=marker,tag=1153.TempMarker,distance=..0.35,limit=1] rotated as @p[tag=1153.Owner] run tp @s ~ ~ ~ ~ ~

# 蝶の向きを調整
    execute at @s on passengers run tp @s ~ ~ ~ ~ 0

# リセット
    execute at @p[tag=1153.Owner] run kill @e[type=marker,tag=1153.TempMarker,distance=..5]
