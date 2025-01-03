#> asset:object/2123.heiloang_flare/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2123/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 予告
    execute if entity @s[scores={General.Object.Tick=21}] run function asset:object/2123.heiloang_flare/tick/prediction
    execute if entity @s[scores={General.Object.Tick=21..104}] on passengers run function asset:object/2123.heiloang_flare/tick/effect_vector

# 拡大
    execute if entity @s[scores={General.Object.Tick=108}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,0f],scale:[0f,50f,0f]}}
    execute if entity @s[scores={General.Object.Tick=138}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,0f],scale:[0f,50f,0f]}}
    execute if entity @s[scores={General.Object.Tick=168}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,0f],scale:[0f,50f,0f]}}
    execute if entity @s[scores={General.Object.Tick=198}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,0f],scale:[0f,50f,0f]}}
    execute if entity @s[scores={General.Object.Tick=228}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,0f],scale:[0f,50f,0f]}}
    execute if entity @s[scores={General.Object.Tick=258}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,0f],scale:[0f,50f,0f]}}
    execute if entity @s[scores={General.Object.Tick=288}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,0f],scale:[0f,50f,0f]}}


# 移動
    execute if entity @s[scores={General.Object.Tick=112}] run tp @s ^ ^ ^5.5
    execute if entity @s[scores={General.Object.Tick=142}] run tp @s ^ ^ ^5.5
    execute if entity @s[scores={General.Object.Tick=172}] run tp @s ^ ^ ^5.5
    execute if entity @s[scores={General.Object.Tick=202}] run tp @s ^ ^ ^5.5
    execute if entity @s[scores={General.Object.Tick=232}] run tp @s ^ ^ ^5.5
    execute if entity @s[scores={General.Object.Tick=262}] run tp @s ^ ^ ^5.5
    execute if entity @s[scores={General.Object.Tick=292}] run tp @s ^ ^ ^5.5

# 攻撃
    execute if entity @s[scores={General.Object.Tick=105}] run function asset:object/2123.heiloang_flare/tick/damage
    execute if entity @s[scores={General.Object.Tick=135}] run function asset:object/2123.heiloang_flare/tick/damage
    execute if entity @s[scores={General.Object.Tick=165}] run function asset:object/2123.heiloang_flare/tick/damage
    execute if entity @s[scores={General.Object.Tick=195}] run function asset:object/2123.heiloang_flare/tick/damage
    execute if entity @s[scores={General.Object.Tick=225}] run function asset:object/2123.heiloang_flare/tick/damage
    execute if entity @s[scores={General.Object.Tick=255}] run function asset:object/2123.heiloang_flare/tick/damage
    execute if entity @s[scores={General.Object.Tick=285}] run function asset:object/2123.heiloang_flare/tick/damage
    execute if entity @s[scores={General.Object.Tick=120}] if predicate api:global_vars/difficulty/max/normal run function asset:object/2123.heiloang_flare/tick/prediction_normal
    execute if entity @s[scores={General.Object.Tick=150}] if predicate api:global_vars/difficulty/max/normal run function asset:object/2123.heiloang_flare/tick/prediction_normal
    execute if entity @s[scores={General.Object.Tick=180}] if predicate api:global_vars/difficulty/max/normal run function asset:object/2123.heiloang_flare/tick/prediction_normal
    execute if entity @s[scores={General.Object.Tick=210}] if predicate api:global_vars/difficulty/max/normal run function asset:object/2123.heiloang_flare/tick/prediction_normal
    execute if entity @s[scores={General.Object.Tick=240}] if predicate api:global_vars/difficulty/max/normal run function asset:object/2123.heiloang_flare/tick/prediction_normal
    execute if entity @s[scores={General.Object.Tick=270}] if predicate api:global_vars/difficulty/max/normal run function asset:object/2123.heiloang_flare/tick/prediction_normal
    execute if entity @s[scores={General.Object.Tick=130}] if predicate api:global_vars/difficulty/min/hard run function asset:object/2123.heiloang_flare/tick/prediction_hard
    execute if entity @s[scores={General.Object.Tick=160}] if predicate api:global_vars/difficulty/min/hard run function asset:object/2123.heiloang_flare/tick/prediction_hard
    execute if entity @s[scores={General.Object.Tick=190}] if predicate api:global_vars/difficulty/min/hard run function asset:object/2123.heiloang_flare/tick/prediction_hard
    execute if entity @s[scores={General.Object.Tick=220}] if predicate api:global_vars/difficulty/min/hard run function asset:object/2123.heiloang_flare/tick/prediction_hard
    execute if entity @s[scores={General.Object.Tick=250}] if predicate api:global_vars/difficulty/min/hard run function asset:object/2123.heiloang_flare/tick/prediction_hard
    execute if entity @s[scores={General.Object.Tick=280}] if predicate api:global_vars/difficulty/min/hard run function asset:object/2123.heiloang_flare/tick/prediction_hard

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=101..}] on passengers run kill @s
    kill @s[scores={General.Object.Tick=295..}]
