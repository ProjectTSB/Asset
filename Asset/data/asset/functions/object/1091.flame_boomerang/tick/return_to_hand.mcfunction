#> asset:object/1091.flame_boomerang/tick/return_to_hand
#
# 使用者の手元を目標として戻る
#
# @within function asset:object/1091.flame_boomerang/tick/

#> Private
# @private
    #declare tag TargetMarker

# 手元にmarkerを召喚してそこへ誘導する
    execute as @p[tag=Owner] at @s anchored eyes positioned ^-0.35 ^-0.35 ^0.2 run summon marker ~ ~ ~ {Tags:["TargetMarker"]}
    execute facing entity @e[type=marker,tag=TargetMarker,distance=..110] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-200 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
    kill @e[type=marker,tag=TargetMarker,distance=..110]
