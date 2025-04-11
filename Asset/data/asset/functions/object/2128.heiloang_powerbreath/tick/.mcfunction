#> asset:object/2128.heiloang_powerbreath/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2128/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大
    execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,0f],scale:[35f,50f,35f]}}
    execute if entity @s[scores={General.Object.Tick=8}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,0f],scale:[30f,50f,30f]}}
    execute if entity @s[scores={General.Object.Tick=15}] run data merge entity @s {start_interpolation:0,interpolation_duration:8,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.3f,0f],scale:[0f,60f,0f]}}

# 攻撃
    tp @s ~ ~ ~ ~45 ~
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/2128.heiloang_powerbreath/tick/damage
    execute if entity @s[scores={General.Object.Tick=3..15}] run particle explosion ~ ~0.5 ~ 2.5 0.3 2.5 0 2
    execute if entity @s[scores={General.Object.Tick=3..15}] run particle explosion ~ ~10 ~ 2.5 5 2.5 0 3
    execute if entity @s[scores={General.Object.Tick=3..15}] run particle flash ~ ~2 ~ 2.5 0 2.5 0 6
    execute if entity @s[scores={General.Object.Tick=12}] positioned ~ ~20 ~ run particle dust 1 0.941 0.612 4 ~ ~ ~ 1 8 1 0 30
    execute if entity @s[scores={General.Object.Tick=4}] positioned ~ ~1.5 ~ run function asset:object/2128.heiloang_powerbreath/tick/particle.m {Distance:6}
    execute if entity @s[scores={General.Object.Tick=5}] positioned ~ ~2 ~ run function asset:object/2128.heiloang_powerbreath/tick/particle.m {Distance:8}
    execute if entity @s[scores={General.Object.Tick=6}] positioned ~ ~3 ~ run function asset:object/2128.heiloang_powerbreath/tick/particle.m {Distance:10}
    execute if entity @s[scores={General.Object.Tick=7}] positioned ~ ~4 ~ run function asset:object/2128.heiloang_powerbreath/tick/particle.m {Distance:14}
    execute if entity @s[scores={General.Object.Tick=8}] positioned ~ ~5.5 ~ run function asset:object/2128.heiloang_powerbreath/tick/particle.m {Distance:18}
    execute if entity @s[scores={General.Object.Tick=9}] positioned ~ ~7 ~ run function asset:object/2128.heiloang_powerbreath/tick/particle.m {Distance:24}
    execute if entity @s[scores={General.Object.Tick=10}] positioned ~ ~9 ~ run function asset:object/2128.heiloang_powerbreath/tick/particle.m {Distance:30}

# 追撃
    # execute if entity @s[scores={General.Object.Tick=5}] run function asset:object/2128.heiloang_powerbreath/tick/prediction
    execute if entity @s[scores={General.Object.Tick=23}] run function asset:object/2128.heiloang_powerbreath/tick/damage_pursuit
    execute if entity @s[scores={General.Object.Tick=23}] run function asset:object/2128.heiloang_powerbreath/tick/effect_pursuit.m {Distance:5}
    execute if entity @s[scores={General.Object.Tick=25}] run function asset:object/2128.heiloang_powerbreath/tick/effect_pursuit.m {Distance:10}
    execute if entity @s[scores={General.Object.Tick=27}] run function asset:object/2128.heiloang_powerbreath/tick/effect_pursuit.m {Distance:15}

# 消滅処理
    kill @s[scores={General.Object.Tick=28..}]
