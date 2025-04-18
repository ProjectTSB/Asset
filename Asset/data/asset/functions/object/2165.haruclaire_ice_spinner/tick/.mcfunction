#> asset:object/2165.haruclaire_ice_spinner/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2165/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# きらきら
    particle end_rod ~ ~ ~ 0 0 0 0 1
    particle firework ~ ~ ~ 0.1 0.1 0.1 0.1 1

# 出現
    execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:17,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}

# 移動
    function asset:object/2165.haruclaire_ice_spinner/tick/move

# 攻撃
    execute if entity @s[scores={General.Object.Tick=20..}] if entity @a[tag=!PlayerShouldInvulnerable,distance=..1.7] run function asset:object/2165.haruclaire_ice_spinner/tick/attack

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=401..}] run function asset:object/2165.haruclaire_ice_spinner/tick/kill
