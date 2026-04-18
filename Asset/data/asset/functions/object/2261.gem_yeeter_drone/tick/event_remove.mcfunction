#> asset:object/2261.gem_yeeter_drone/tick/event_remove
#
# Objectのtick時の処理
#
# @within asset:object/2261.gem_yeeter_drone/tick/

# アニメーション再生
    execute if entity @s[scores={General.Object.Tick=1}] as @e[type=item_display,tag=2261.Model.Target,distance=..30,sort=nearest,limit=1] at @s run function animated_java:gem_tnt_drone/animations/remove/tween {duration:1, to_frame: 1}

# 演出
    execute if entity @s[scores={General.Object.Tick=1}] run playsound entity.phantom.flap hostile @a ~ ~ ~ 2 1
    execute if entity @s[scores={General.Object.Tick=1}] run playsound entity.phantom.flap hostile @a ~ ~ ~ 2 1

# 消去
    execute if entity @s[scores={General.Object.Tick=20..}] run tag @s add CO.Drone.Remove
