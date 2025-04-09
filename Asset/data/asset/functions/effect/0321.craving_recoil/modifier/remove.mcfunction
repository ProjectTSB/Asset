#> asset:effect/0321.craving_recoil/modifier/remove
#
# 補正の削除
#
# @within function
#   asset:effect/0321.craving_recoil/end/
#   asset:effect/0321.craving_recoil/remove/

data modify storage api: Argument.UUID set value [I;1,3,321,0]
function api:modifier/receive_heal/remove
