#> asset:object/2260.gem_attack_drone/tick/event_attack
#
# Objectのtick時の処理
#
# @within asset:object/2260.gem_attack_drone/tick/

# アニメーション再生
    execute if entity @s[scores={General.Object.Tick=1}] as @e[type=item_display,tag=2260.Model.Target,distance=..30,sort=nearest,limit=1] at @s run function animated_java:gem_attack_drone/animations/attack_start/tween {duration:1, to_frame: 1}
    execute if entity @s[scores={General.Object.Tick=27}] as @e[type=item_display,tag=2260.Model.Target,distance=..30,sort=nearest,limit=1] at @s run function animated_java:gem_attack_drone/animations/attack/tween {duration:1, to_frame: 1}

# 演出
    execute if entity @s[scores={General.Object.Tick=1}] run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.8
    execute if entity @s[scores={General.Object.Tick=20}] run playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={General.Object.Tick=23..}] run particle cloud ^4 ^ ^ 0.1 0.1 0.1 0.05 1
    execute if entity @s[scores={General.Object.Tick=23..}] run particle cloud ^-4 ^ ^ 0.1 0.1 0.1 0.05 1
    execute if entity @s[scores={General.Object.Tick=20..}] run particle block quartz_block ^ ^ ^ 0.1 0.1 0.1 0.05 1

# 移動
    execute if entity @s[scores={General.Object.Tick=1..5}] run tp @s ^ ^ ^-0.5
    execute if entity @s[scores={General.Object.Tick=20..27}] run tp @s ^ ^ ^0.8
    execute if entity @s[scores={General.Object.Tick=28..}] run tp @s ^ ^ ^1.5

# 攻撃
    execute if entity @s[scores={General.Object.Tick=20..}] run function asset:object/2260.gem_attack_drone/tick/attack

# 消去
    execute if entity @s[scores={General.Object.Tick=80..}] run tag @s add CO.Drone.Remove
