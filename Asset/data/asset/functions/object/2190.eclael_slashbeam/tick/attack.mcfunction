#> asset:object/2190.eclael_slashbeam/tick/attack
#
# 攻撃判定
#
# @within function asset:object/2190.eclael_slashbeam/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=2190.Hit] at @s run function api:damage/
    function api:damage/reset

# 終了
    tag @a[tag=2190.Hit] remove 2190.Hit
