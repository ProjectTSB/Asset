#> asset:object/2270.yeeter_tnt/tick/damage
#
# Objectのtick時の処理
#
# @within function asset:object/2270.yeeter_tnt/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Amount
    data modify storage api: Argument.AttackType set from storage asset:context this.Damage.Type
    data modify storage api: Argument.ElementType set from storage asset:context this.Damage.Element
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run function api:damage/
    function api:damage/reset

# 演出
    particle explosion ~ ~1 ~ 3 1 3 0 20 force
    particle lava ~ ~1 ~ 3 1 3 0.2 10
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0.8
