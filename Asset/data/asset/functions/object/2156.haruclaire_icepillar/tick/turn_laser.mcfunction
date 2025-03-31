#> asset:object/2156.haruclaire_icepillar/tick/turn_laser
#
# Objectのtick時の処理
#
# @within asset:object/2156.haruclaire_icepillar/tick/

# 回転
    execute unless entity @s[tag=2156.Right] as @e[type=area_effect_cloud,tag=2156.AttackRotation,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~-2 ~
    execute if entity @s[tag=2156.Right] as @e[type=area_effect_cloud,tag=2156.AttackRotation,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~2 ~
    execute on passengers if entity @s[tag=2156.Crystal] at @s rotated as @e[type=area_effect_cloud,tag=2156.AttackRotation,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# レーザーの角度と位置変更
    execute unless entity @s[tag=2156.Right] as @e[type=area_effect_cloud,tag=2156.AttackRotation,sort=nearest,limit=1] at @s positioned ~ ~ ~ positioned ^ ^ ^0.8 as @e[type=item_display,tag=2155.Object,sort=nearest,limit=1] rotated as @s run tp @s ~ ~ ~ ~-2 ~
    execute if entity @s[tag=2156.Right] as @e[type=area_effect_cloud,tag=2156.AttackRotation,sort=nearest,limit=1] at @s positioned ~ ~ ~ positioned ^ ^ ^0.8 as @e[type=item_display,tag=2155.Object,sort=nearest,limit=1] rotated as @s run tp @s ~ ~ ~ ~2 ~
