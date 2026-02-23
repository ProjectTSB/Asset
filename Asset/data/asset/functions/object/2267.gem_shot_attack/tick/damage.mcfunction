#> asset:object/2267.gem_shot_attack/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2267.gem_shot_attack/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Amount
    data modify storage api: Argument.AttackType set from storage asset:context this.Damage.Type
    data modify storage api: Argument.ElementType set from storage asset:context this.Damage.Element
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=2267.Hit] run function api:damage/
    function api:damage/reset
    tag @a remove 2267.Hit
