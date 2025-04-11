#> asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/4.3.attack_slash_2
#
# アニメーションのイベントハンドラ 前半・連続斬り 居合斬り攻撃判定
#
# @within
#   function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/1.main
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
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.Slash2
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

# 演出
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Item:{id:"stick"},Color:16777088,Frames:[20502,20503,20504,20505],Scale:[12f,2f,12f],Transformation:{left_rotation:{axis:[0,0,1],angle:-0.610865f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^1 ^1 run function api:object/summon

# 弾召喚
    # 弾召喚
        data modify storage api: Argument.ID set value 2190
        data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Beam
        data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
        data modify storage api: Argument.FieldOverride.Angle set value -0.698132f
        execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
        execute positioned ^ ^1 ^4 run function api:object/summon
