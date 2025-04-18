#> asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/attack_2
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/main

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2

# ターゲット取得
    execute positioned ~ ~ ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add 93.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.Move1
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
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80] run tp @s ~ ~ ~ ~90 0
    data modify storage api: Argument.ID set value 2207
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Move2
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80,limit=1] Rotation[0]
    execute positioned ^ ^-1 ^-1 run function api:object/summon

# 演出
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Item:{id:"stick"},Color:16777088,Frames:[20502,20503,20504],Scale:[8f,1f,3f],Transformation:{left_rotation:{axis:[0,0,1],angle:-0.2f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute rotated ~240 ~-80 positioned ^ ^0 ^2 run function api:object/summon
