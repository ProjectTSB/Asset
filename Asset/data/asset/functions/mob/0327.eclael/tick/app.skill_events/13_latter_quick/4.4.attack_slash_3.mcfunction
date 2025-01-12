#> asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.4.attack_slash_3
#
# アニメーションのイベントハンドラ 後半・鞭コンボ 1段目攻撃判定
#
# @within
#   function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/**
#   function asset:mob/0327.eclael/debug_damage

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1.2
    execute positioned ^ ^1 ^2 rotated ~90 ~-35 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/5.2.particle_iai
    execute positioned ^ ^1 ^3 rotated ~90 ~-35 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/5.2.particle_iai

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
# 対象に
    execute positioned ^ ^ ^3 as @a[tag=!PlayerShouldInvulnerable,distance=..3.3] run function api:damage/
# リセット
    function api:damage/reset

# 弾召喚
    # 弾召喚
        data modify storage api: Argument.ID set value 2190
        data modify storage api: Argument.FieldOverride.Damage set value 40.0f
        data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
        execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
        execute positioned ^ ^1 ^4 run function api:object/summon
