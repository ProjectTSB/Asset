#> asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/4.2.attack_slash_1
#
# アニメーションのイベントハンドラ 後半・回転斬り 追撃部分
#
# @within
#   function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/**
#   function asset:mob/0327.eclael/debug_damage

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2
    execute positioned ~ ~1 ~ rotated ~60 ~5 run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/5.2.particle_slash_0
    execute positioned ~ ~1.5 ~ rotated ~-45 ~7 run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/5.4.particle_slash_2
    execute positioned ~ ~0.7 ~ rotated ~120 ~-5 run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/5.5.particle_slash_3

# ターゲット取得
    execute positioned ~ ~ ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..12] add 93.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set value 50f
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


# 弾召喚
    data modify storage api: Argument.ID set value 2190
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^1 ^7 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~60 ~
    data modify storage api: Argument.ID set value 2190
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^1 ^7 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~60 ~
    data modify storage api: Argument.ID set value 2190
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^1 ^7 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~60 ~
    data modify storage api: Argument.ID set value 2190
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^1 ^7 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~60 ~
    data modify storage api: Argument.ID set value 2190
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^1 ^7 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~60 ~
    data modify storage api: Argument.ID set value 2190
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^1 ^7 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~60 ~
