#> asset:object/2156.haruclaire_icepillar/tick/turn_laser
#
# Objectのtick時の処理
#
# @within asset:object/2156.haruclaire_icepillar/tick/

# 回転
    execute if entity @s[tag=!2156.Right] as @e[type=area_effect_cloud,tag=2156.AttackRotation,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~-2 ~
    execute if entity @s[tag= 2156.Right] as @e[type=area_effect_cloud,tag=2156.AttackRotation,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~02 ~

# レーザーの角度と位置変更
    execute if entity @s[tag=!2156.Right] as @e[type=area_effect_cloud,tag=2156.AttackRotation,sort=nearest,limit=1] at @s positioned ~ ~4 ~ positioned ^ ^ ^1.5 as @e[type=item_display,scores={ObjectID=2155},sort=nearest,limit=1] rotated as @s run tp @s ~ ~ ~ ~-2 ~
    execute if entity @s[tag= 2156.Right] as @e[type=area_effect_cloud,tag=2156.AttackRotation,sort=nearest,limit=1] at @s positioned ~ ~4 ~ positioned ^ ^ ^1.5 as @e[type=item_display,scores={ObjectID=2155},sort=nearest,limit=1] rotated as @s run tp @s ~ ~ ~ ~02 ~
