#> asset:object/2152.haruclaire_icespear/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2152/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大
    execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.8f,3.2f,1.8f]}}

# ダメージ
    execute if entity @s[scores={General.Object.Tick=1}] run function asset:object/2152.haruclaire_icespear/tick/attack

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=20..}] run function asset:object/2152.haruclaire_icespear/tick/kill
