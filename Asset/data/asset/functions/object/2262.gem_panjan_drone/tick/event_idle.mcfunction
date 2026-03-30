#> asset:object/2262.gem_panjan_drone/tick/event_idle
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/

# アニメーション再生
    execute if entity @s[scores={General.Object.Tick=1}] as @e[type=item_display,tag=2262.Model.Target,distance=..30,sort=nearest,limit=1] at @s run function animated_java:gem_panjan_drone/animations/idle/tween {duration:1, to_frame: 1}

# 線召喚
    execute if entity @s[tag=2262.IsMove] if score @s General.Object.Tick matches 1 run function asset:object/2262.gem_panjan_drone/tick/summon_target_line
    execute if entity @s[tag=2262.IsMove] run function asset:object/2262.gem_panjan_drone/tick/link_target_line.m with storage asset:context this

# 移動または攻撃に移行
    execute if entity @s[tag=2262.IsMove] if score @s General.Object.Tick >= @s 2262.IdleTime run function asset:object/2262.gem_panjan_drone/tick/start_move
    execute unless entity @s[tag=2262.IsMove] if score @s General.Object.Tick >= @s 2262.IdleTime run function asset:object/2262.gem_panjan_drone/tick/start_attack
