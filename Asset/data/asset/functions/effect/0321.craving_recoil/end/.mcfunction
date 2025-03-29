#> asset:effect/0321.craving_recoil/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0321.craving_recoil/_/end

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,601,0]
    function api:modifier/receive_heal/remove
