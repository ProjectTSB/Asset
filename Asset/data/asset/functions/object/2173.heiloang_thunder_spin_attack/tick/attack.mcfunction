#> asset:object/2173.heiloang_thunder_spin_attack/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2173.heiloang_thunder_spin_attack/tick/

# 演出
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0.7
    data modify storage api: Argument.ID set value 2120
    execute positioned ~ ~ ~ run function api:object/summon

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3.5] run function api:damage/
    function api:damage/reset
