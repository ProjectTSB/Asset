#> asset:effect/0421.osmanthus_scent/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0421.osmanthus_scent/_/re-given

# 爆発
# 先に香りを付けたプレイヤーの攻撃として扱うため、上書き前のFieldで爆発させる
    data modify storage asset:temp 421.Field set from storage asset:context PreviousField
    function asset:effect/0421.osmanthus_scent/detonate/
