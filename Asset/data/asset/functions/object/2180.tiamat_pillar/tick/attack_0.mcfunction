#> asset:object/2180.tiamat_pillar/tick/attack_0
#
# Objectのtick時の処理
#
# @within asset:object/2180.tiamat_pillar/tick/kill

# ダメージ
    data modify storage api: Argument.Damage set value 50.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..12] run function api:damage/
    function api:damage/reset

# 演出
    execute positioned ~ ~ ~ run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 2 0.7
    data modify storage api: Argument.ID set value 2120
    function api:object/summon
