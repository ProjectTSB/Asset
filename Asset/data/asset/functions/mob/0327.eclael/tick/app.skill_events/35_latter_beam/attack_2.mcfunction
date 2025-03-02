#> asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/attack_2
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/main

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2
    execute positioned ^ ^1.6 ^ rotated ~90 ~-20 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/5.2.particle_slash_0
    execute positioned ^ ^1.6 ^3 rotated ~90 ~-20 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/5.2.particle_slash_0
    execute positioned ^ ^1.6 ^6 rotated ~90 ~-20 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/5.2.particle_slash_0

# ターゲット取得
    execute positioned ~ ~ ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..3.5] add 93.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set value 60f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function api:damage/modifier
# 対象にダメージ
    execute as @a[tag=93.Temp.AttackTarget] run function api:damage/
# リセット
    function api:damage/reset
    tag @a remove 93.Temp.AttackTarget

# ライン斬撃
    summon area_effect_cloud ^ ^ ^ {Duration:1,Tags:["93.Temp.AttackRotation"]}
    execute if predicate api:global_vars/difficulty/min/hard as @e[type=area_effect_cloud,tag=93.Temp.AttackRotation] run tp @s ~ ~ ~ ~25 0
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.ID set value 2207
    execute if predicate api:global_vars/difficulty/min/hard store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.FieldOverride.IsGreen set value true
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.FieldOverride.Damage set value 45.0f
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,limit=1] Rotation[0]
    execute if predicate api:global_vars/difficulty/min/hard positioned ^-2 ^ ^ run function api:object/summon
    execute if predicate api:global_vars/difficulty/min/hard as @e[type=area_effect_cloud,tag=93.Temp.AttackRotation] at @s run tp @s ~ ~ ~ ~-50 0
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.ID set value 2207
    execute if predicate api:global_vars/difficulty/min/hard store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.FieldOverride.IsGreen set value false
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.FieldOverride.Damage set value 45.0f
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,limit=1] Rotation[0]
    execute if predicate api:global_vars/difficulty/min/hard positioned ^2 ^ ^ run function api:object/summon

# 演出
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Item:{id:"stick"},Color:16777088,Frames:[20502,20503,20504,20505],Scale:[18f,1f,20f],Transformation:{left_rotation:{axis:[0,0,1],angle:-0.3f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^1.8 ^-3 run function api:object/summon
