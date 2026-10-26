#> asset:effect/0384.ninjas_mindset/fullset/equip
#
# フルセット効果の付与
#
# @within function asset:effect/0384.ninjas_mindset/given/
# @within function asset:effect/0384.ninjas_mindset/re-given/
# @within function asset:effect/0384.ninjas_mindset/tick/

# 一旦エフェクト消す
    data modify storage api: Argument.UUID set value [I;1,3,384,0]
    function api:modifier/attack/physical/remove

# 物理攻撃
    data modify storage api: Argument.UUID set value [I;1,3,384,0]
    data modify storage api: Argument.Amount set value 0.05d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/physical/add

# 暗所バフは受けていない状態
    tag @s remove 0384.IsInDarkness
