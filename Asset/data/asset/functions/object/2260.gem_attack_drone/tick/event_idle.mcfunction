#> asset:object/2260.gem_attack_drone/tick/event_idle
#
# Objectのtick時の処理
#
# @within asset:object/2260.gem_attack_drone/tick/

# アニメーション再生
    execute if entity @s[scores={General.Object.Tick=1}] as @e[type=item_display,tag=2260.Model.Target,distance=..30,sort=nearest,limit=1] at @s run function animated_java:gem_attack_drone/animations/idle/tween {duration:1, to_frame: 1}

# 予告
    execute if score @s General.Object.Tick = @s 2260.PredictionTime run function asset:object/2260.gem_attack_drone/tick/prediction

# idleに移行
    execute if score @s General.Object.Tick >= @s 2260.IdleTime run function asset:object/2260.gem_attack_drone/tick/start_attack
