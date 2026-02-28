#> asset:object/2261.gem_yeeter_drone/tick/event_start
#
# Objectのtick時の処理
#
# @within asset:object/2261.gem_yeeter_drone/tick/

# アニメーション再生
    execute if entity @s[scores={General.Object.Tick=1}] as @e[type=item_display,tag=2261.Model.Target,distance=..30,sort=nearest,limit=1] at @s run function animated_java:gem_tnt_drone/animations/summon/tween {duration:1, to_frame: 1}

# 演出
    # execute if entity @s[scores={General.Object.Tick=15}] run playsound entity.ravager.step hostile @a ~ ~ ~ 2 0.7
    # execute if entity @s[scores={General.Object.Tick=15}] run playsound entity.ravager.step hostile @a ~ ~ ~ 2 0.6
    # execute if entity @s[scores={General.Object.Tick=15}] run particle block quartz_block ~ ~0.2 ~ 1.5 0.1 1.5 0 30
    # execute if entity @s[scores={General.Object.Tick=28}] run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.8
    # execute if entity @s[scores={General.Object.Tick=50}] run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.8
# idleに移行
    execute if score @s General.Object.Tick matches 26.. run function asset:object/2261.gem_yeeter_drone/tick/start_idle
