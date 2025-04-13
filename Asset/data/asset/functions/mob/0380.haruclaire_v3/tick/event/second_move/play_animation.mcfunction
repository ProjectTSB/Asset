#> asset:mob/0380.haruclaire_v3/tick/event/second_move/play_animation
#
# 移動
#
# @within asset:mob/0380.haruclaire_v3/tick/event/second_move/

# アニメーション再生
    execute facing entity @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^ ^ ^1 if entity @s[distance=..0.7653668647301796] as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run return run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/30_0_move_forward
    execute facing entity @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 if entity @s[distance=..0.7653668647301796] as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run return run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/30_0_move_back
    execute facing entity @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^-1 ^ ^ if entity @s[distance=..0.7653668647301796] as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run return run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/30_0_move_right
    execute as @e[type=item_display,tag=AK.ModelRoot,distance=..80,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/30_0_move_left
