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
    execute positioned ^ ^1.6 ^ rotated ~90 ~-20 run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/particle_slash
    execute positioned ^ ^1.6 ^3 rotated ~90 ~-20 run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/particle_slash
    execute positioned ^ ^1.6 ^6 rotated ~90 ~-20 run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/particle_slash

# ターゲット取得
    execute positioned ^ ^ ^-3 run tag @a[tag=!PlayerShouldInvulnerable,distance=..6] add 93.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.BeamWhip
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

# 演出
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Item:{id:"stick"},Color:16777088,Frames:[20502,20503,20504,20505],Scale:[18f,5f,20f],Transformation:{left_rotation:{axis:[0,0,1],angle:-0.3f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^1.8 ^-3 run function api:object/summon

# 弾召喚
    data modify storage api: Argument.ID set value 2190
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Beam
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Angle set value -0.3f
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^ ^1 ^1 run function api:object/summon

# ライン斬撃
    execute if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/attack_line_slash.m {Rotation:25,PosX:-2,PosY:0,PosZ:0,IsGreen:true}
    execute if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/attack_line_slash.m {Rotation:-25,PosX:2,PosY:0,PosZ:0,IsGreen:false}
    # summon area_effect_cloud ^ ^ ^ {Duration:1,Tags:["93.Temp.AttackRotation"]}
    # execute if predicate api:global_vars/difficulty/min/3_blessless as @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80] run tp @s ~ ~ ~ ~25 0
    # execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.ID set value 2207
    # execute if predicate api:global_vars/difficulty/min/3_blessless store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    # execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.IsGreen set value true
    # execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.BeamSlash
    # execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80,limit=1] Rotation[0]
    # execute if predicate api:global_vars/difficulty/min/3_blessless positioned ^-2 ^ ^ run function api:object/summon
    # execute if predicate api:global_vars/difficulty/min/3_blessless as @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80] at @s run tp @s ~ ~ ~ ~-50 0
    # execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.ID set value 2207
    # execute if predicate api:global_vars/difficulty/min/3_blessless store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    # execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.IsGreen set value false
    # execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.BeamSlash
    # execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80,limit=1] Rotation[0]
    # execute if predicate api:global_vars/difficulty/min/3_blessless positioned ^2 ^ ^ run function api:object/summon
