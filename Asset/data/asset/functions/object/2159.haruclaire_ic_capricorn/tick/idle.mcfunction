#> asset:object/2159.haruclaire_ic_capricorn/tick/idle
#
# Objectのtick時の処理
#
# @within asset:object/2159.haruclaire_ic_capricorn/tick/

# 登場演出
    execute if entity @s[scores={General.Object.Tick=3}] run particle flash ~ ~1 ~ 0 0 0 0 1 force
    execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:6,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.2f,0f],scale:[2f,2f,2f]}}
    execute if entity @s[scores={General.Object.Tick=9}] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.2f,0f],scale:[2.2f,2.2f,2.2f]}}
    execute if entity @s[scores={General.Object.Tick=20}] run function asset:object/2159.haruclaire_ic_capricorn/tick/effect_break

# アニメーション
    execute if entity @s[scores={General.Object.Tick=18}] on passengers run function animated_java:ic_capri_aj/animations/0_start/tween {duration:1, to_frame: 1}
    execute if entity @s[scores={General.Object.Tick=50}] on passengers run function animated_java:ic_capri_aj/animations/1_idle/tween {duration:1, to_frame: 1}
    execute if entity @s[scores={General.Object.Tick=33}] run playsound entity.goat.step hostile @a ~ ~ ~ 2 1
    execute if entity @s[scores={General.Object.Tick=21}] if predicate lib:random_pass_per/80 run return run playsound entity.goat.ambient hostile @a ~ ~ ~ 2 1
    execute if entity @s[scores={General.Object.Tick=21}] run playsound entity.goat.ambient hostile @a ~ ~ ~ 2 1

# 状態遷移
    execute if entity @s[tag=!2159.IsSkipSummon,scores={General.Object.Tick=150}] run function asset:object/2159.haruclaire_ic_capricorn/tick/start_attack
    execute if entity @s[tag=2159.IsSkipSummon,scores={General.Object.Tick=223}] run function asset:object/2159.haruclaire_ic_capricorn/tick/start_attack
