#> asset:object/2262.gem_panjan_drone/tick/event_attack
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/

# アニメーション再生
    execute if entity @s[scores={General.Object.Tick=60}] as @e[type=item_display,tag=2262.Model.Target,distance=..30,sort=nearest,limit=1] at @s run function animated_java:gem_panjan_drone/animations/attack/tween {duration:1, to_frame: 1}

# 予兆
    execute if entity @s[scores={General.Object.Tick=1}] positioned ~ ~ ~ run function asset:object/2262.gem_panjan_drone/tick/prediction.m {PredictionTime:60}

# 攻撃
    execute if entity @s[scores={General.Object.Tick=60}] positioned ~ ~ ~ run function asset:object/2262.gem_panjan_drone/tick/attack

# ダメージ床に移行
    execute if entity @s[scores={General.Object.Tick=61..}] positioned ~ ~ ~ run function asset:object/2262.gem_panjan_drone/tick/start_flame
