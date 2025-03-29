#> asset:effect/0321.craving_recoil/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0321.craving_recoil/_/remove

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,601,0]
    function api:modifier/receive_heal/remove
