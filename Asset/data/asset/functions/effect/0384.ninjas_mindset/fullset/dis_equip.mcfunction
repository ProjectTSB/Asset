#> asset:effect/0384.ninjas_mindset/fullset/dis_equip
#
# フルセット効果の剝奪
#
# @within function asset:effect/0384.ninjas_mindset/re-given/

# 物理攻撃
    data modify storage api: Argument.UUID set value [I;1,3,384,0]
    function api:modifier/attack/physical/remove
