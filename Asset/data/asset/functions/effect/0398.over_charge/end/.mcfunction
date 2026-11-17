#> asset:effect/0398.over_charge/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0398.over_charge/_/end

# 削除
    function asset:effect/0398.over_charge/modifier/remove

# 物理・雷属性の固定ダメージを与える
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.FixedDamage set value true
    function api:damage/modifier
    function api:damage/
    function api:damage/reset
