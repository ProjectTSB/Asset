#> asset:object/1153.flare_butterfly/tick/move/to_owner/chase
#
#
#
# @within function asset:object/1153.flare_butterfly/tick/move/to_owner/

# 向きだけ追尾
    execute facing entity @e[type=marker,tag=1153.TempMarker,distance=..64,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-120 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# 該当Markerとの距離に応じて速度を変える
    execute unless entity @e[type=marker,tag=1153.TempMarker,distance=..24,limit=1] at @s run return run tp @s ^ ^ ^1.5
    execute unless entity @e[type=marker,tag=1153.TempMarker,distance=..12,limit=1] at @s run return run tp @s ^ ^ ^0.9
    execute at @s run tp @s ^ ^ ^0.3
