#> asset:effect/0421.osmanthus_scent/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0421.osmanthus_scent/_/end

# 爆発
    data modify storage asset:temp 421.Field set from storage asset:context this
    function asset:effect/0421.osmanthus_scent/detonate/
