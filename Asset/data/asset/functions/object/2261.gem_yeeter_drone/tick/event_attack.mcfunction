#> asset:object/2261.gem_yeeter_drone/tick/event_attack
#
# Objectのtick時の処理
#
# @within asset:object/2261.gem_yeeter_drone/tick/

# アニメーション再生
    execute if entity @s[scores={General.Object.Tick=1}] as @e[type=item_display,tag=2261.Model.Target,distance=..30,sort=nearest,limit=1] at @s run function animated_java:gem_tnt_drone/animations/attack_start/tween {duration:1, to_frame: 1}
    execute if entity @s[scores={General.Object.Tick=40}] as @e[type=item_display,tag=2261.Model.Target,distance=..30,sort=nearest,limit=1] at @s run function animated_java:gem_tnt_drone/animations/attack/tween {duration:1, to_frame: 1}

# 演出
    execute if entity @s[scores={General.Object.Tick=1}] run playsound entity.phantom.flap hostile @a ~ ~ ~ 2 1
    execute if entity @s[scores={General.Object.Tick=1}] run playsound entity.phantom.flap hostile @a ~ ~ ~ 2 1
    execute if entity @s[scores={General.Object.Tick=35}] run playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.7

# 移動
    execute if entity @s[scores={General.Object.Tick=1..15}] run tp @s ^ ^ ^-0.2
    execute if entity @s[scores={General.Object.Tick=35..40}] run tp @s ^ ^ ^0.2
    execute if entity @s[scores={General.Object.Tick=41..}] run tp @s ^ ^ ^0.4

# 攻撃
    execute if entity @s[scores={General.Object.Tick=40..}] run scoreboard players add @s 2261.AttackInterval 1
    execute if entity @s[scores={2261.AttackInterval=20..}] run scoreboard players set @s 2261.AttackInterval 0
    execute if entity @s[scores={2261.AttackInterval=1}] positioned ~ ~5 ~ run function asset:object/2261.gem_yeeter_drone/tick/attack

# 消去
    execute if entity @s[scores={General.Object.Tick=175..}] run tag @s add CO.Drone.Remove
