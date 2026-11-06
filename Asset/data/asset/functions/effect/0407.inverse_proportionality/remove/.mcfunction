#> asset:effect/0407.inverse_proportionality/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0407.inverse_proportionality/_/remove

# modifier削除
    data modify storage api: Argument.UUID set value [I;1,3,407,0]
    function api:modifier/defense/base/remove
    data modify storage api: Argument.UUID set value [I;1,3,407,0]
    function api:modifier/heal/remove
