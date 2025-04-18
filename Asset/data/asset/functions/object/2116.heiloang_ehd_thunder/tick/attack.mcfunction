#> asset:object/2116.heiloang_ehd_thunder/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2116.heiloang_ehd_thunder/tick/attack_check

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..25] run function asset:object/2116.heiloang_ehd_thunder/tick/attack_player
    function api:damage/reset

# 演出
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 3 1
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 3 0.7
    particle firework ~ ~1 ~ 10 1 10 0.1 100 force
    particle dust 1 0.855 0.376 4 ~ ~1 ~ 10 1 10 0.1 100 force
    particle flash ~ ~1 ~ 10 1 10 0.1 30 force
    particle explosion ~ ~1 ~ 10 1 10 0.1 50 force

    data modify storage api: Argument.ID set value 2120
    data modify storage api: Argument.FieldOverride.OverrideTransform set value [32.0000f,0.0000f,0.0000f,0.0000f,0.0000f,32.0000f,0.0000f,-3.6250f,0.0000f,0.0000f,32.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    data modify storage api: Argument.FieldOverride.OverrideBillboard set value "vertical"
    data modify storage api: Argument.FieldOverride.OverrideSubScale set value [20f, 20f, 20f]
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute positioned ~ ~ ~ rotated ~ ~ run function api:object/summon

# 演出用AEC召喚
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["2116.Pos"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["2116.Pos"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["2116.Pos"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["2116.Pos"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["2116.Pos"]}
    spreadplayers ~ ~ 6 15 false @e[type=area_effect_cloud,tag=2116.Pos]
