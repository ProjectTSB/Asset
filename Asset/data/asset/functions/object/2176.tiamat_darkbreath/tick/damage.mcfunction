#> asset:object/2176.tiamat_darkbreath/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2176.tiamat_darkbreath/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=2176.Hit] run function api:damage/
    function api:damage/reset
    tag @a[tag=2176.Hit] remove 2176.Hit
