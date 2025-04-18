#> asset:artifact/0105.secret_meat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0105.secret_meat/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 体力を全回復
    data modify storage api: Argument.Heal set value 66.6f
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# 自身にナゾの肉バフ(ID:203)を付与
    data modify storage api: Argument.ID set value 203
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
