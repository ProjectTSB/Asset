#> asset:artifact/1074.farothdal/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1074/tick/

# ここから先は神器側の効果の処理を書く

# 効果
    data modify storage api: Argument.ID set value 230
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
