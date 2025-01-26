#> asset:artifact/0105.secret_meat/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/105/use_item/

# 体力を全回復
    data modify storage api: Argument.Heal set value 6666f
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# 自身に謎肉バフ(ID:203)を付与
    data modify storage api: Argument.ID set value 203
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
