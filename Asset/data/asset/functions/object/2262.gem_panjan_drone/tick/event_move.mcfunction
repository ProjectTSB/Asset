#> asset:object/2262.gem_panjan_drone/tick/event_move
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/

# アニメーション再生
    execute if entity @s[scores={General.Object.Tick=1}] as @e[type=item_display,tag=2262.Model.Target,distance=..30,sort=nearest,limit=1] at @s run function animated_java:gem_panjan_drone/animations/move_start/tween {duration:1, to_frame: 1}
    execute if entity @s[scores={General.Object.Tick=20}] as @e[type=item_display,tag=2262.Model.Target,distance=..30,sort=nearest,limit=1] at @s run function animated_java:gem_panjan_drone/animations/move/tween {duration:1, to_frame: 1}

# 演出
    execute if entity @s[scores={General.Object.Tick=1}] run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.8

# 移動
    execute if entity @s[scores={General.Object.Tick=20..}] run function asset:object/2262.gem_panjan_drone/tick/move_to_player.m with storage asset:context this

# 攻撃に移行
    execute if score @s General.Object.Tick matches 200.. run function asset:object/2262.gem_panjan_drone/tick/start_attack
